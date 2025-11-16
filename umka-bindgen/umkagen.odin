package umkagen

import umka "../umka"
import "base:runtime"
import "core:fmt"
import "core:log"
import "core:mem"
import "core:odin/ast"
import "core:odin/parser"
import "core:os"
import "core:strconv"
import "vendor:raylib"


Type_Kind :: enum {
	Pointer,
	Proc,
	Param,
	Struct,
	Builtin,
	Array,
	Slice,
	Enum,
	Alias,
	Distinct,
}

Type :: struct {
	kind:         Type_Kind,
	base_type:    string,
	fields:       [dynamic]Odin_Field,
	enum_fields:  [dynamic]Odin_Enum_Field,
	params:       [dynamic]Odin_Param_Type,
	returns:      [dynamic]Odin_Param_Type,
	dependencies: map[string]struct {
	},
	length:       int,
}

Odin_Param_Type :: struct {
	name: string,
	type: string,
}


Odin_Field :: struct {
	names: [dynamic]string,
	type:  string,
}

Odin_Enum_Field :: struct {
	name:  string,
	value: int,
}


// Umka_Proc :: struct {
// 	name:    string,
// 	params:  [dynamic]Umka_Param,
// 	returns: [dynamic]Umka_Result,
// }

// Umka_Param :: struct {
// 	name: string,
// 	type: Umka_Type,
// }

// Umka_Result :: struct {
// 	type: Umka_Type,
// }

StackSlot :: enum {
	intVal,
	uintVal,
	ptrVal,
	realVal,
	real32Val,
}

Umka_Builtin_Type :: struct {
	name:       string,
	stack_slot: StackSlot,
}


main :: proc() {
	when ODIN_DEBUG {
		track: mem.Tracking_Allocator
		mem.tracking_allocator_init(&track, context.allocator)
		context.allocator = mem.tracking_allocator(&track)

		defer {
			sum := 0
			if len(track.allocation_map) > 0 {
				for _, entry in track.allocation_map {
					fmt.eprintf("%v leaked %v bytes\n", entry.location, entry.size)
					sum += entry.size
				}
				fmt.eprintf("Leaked a total of: %v bytes", sum)
				fmt.eprintf("Size of struct: %d", size_of(Type))
			}
			mem.tracking_allocator_destroy(&track)
		}
	}
	fmt.println("Init")

	pkg, ok := parser.parse_package_from_path("./example")
	if !ok {
		fmt.println("error: failed to read package")
		os.exit(1)
	}
	assert(pkg.kind == .Normal)
	fmt.println("Read pkg")


	for file_name, file in pkg.files {
		fmt.println("Reading:", file_name)
		for decl in file.decls {
			// @(codegen_command) proc_name :: proc() {}
			//  ^~~~attribute     ^~~~name     ^~~~value
			vd: ^ast.Value_Decl
			ok: bool

			if vd, ok = decl.derived_stmt.(^ast.Value_Decl); !ok do continue
			if vd.is_mutable do continue
			if len(vd.values) != 1 do continue
			codegen_type := Type{}
			#partial switch type in vd.values[0].derived_expr {
			case ^ast.Struct_Type:
				struct_ident := vd.names[0].derived_expr.(^ast.Ident)
				struct_type := vd.values[0].derived_expr.(^ast.Struct_Type)
				fmt.println("Found struct:", struct_ident.name)
				codegen_type.kind = .Struct
				for field in struct_type.fields.list {
					codegen_field := Odin_Field{}
					for name in field.names {
						field_name := name.derived_expr.(^ast.Ident).name

						append(&codegen_field.names, field_name)
					}
					type_name := field.type.derived_expr.(^ast.Ident).name
					if type_name in codegen_type.dependencies == false {
						if type_name in odin_types {
							if odin_types[type_name].kind != .Builtin {
								codegen_type.dependencies[type_name] = {}
							}
						} else {
							codegen_type.dependencies[type_name] = {}
						}
					}
					codegen_field.type = type_name
					append(&codegen_type.fields, codegen_field)
				}
				odin_types[struct_ident.name] = codegen_type
			case ^ast.Array_Type:
				array_ident := vd.names[0].derived_expr.(^ast.Ident).name
				fmt.println("Found array:", array_ident)
				array_type := vd.values[0].derived_expr.(^ast.Array_Type)
				type_name := array_type.elem.derived_expr.(^ast.Ident).name
				if (array_type.len != nil) {
					length_string := array_type.len.derived_expr.(^ast.Basic_Lit).tok.text
					length, ok := strconv.parse_int(length_string)
					codegen_type.kind = .Array
					codegen_type.base_type = type_name
					codegen_type.length = length
					odin_types[array_ident] = codegen_type
				} else {
					codegen_type.kind = .Slice
					codegen_type.base_type = type_name
					odin_types[array_ident] = codegen_type
				}
			case ^ast.Enum_Type:
				enum_ident := vd.names[0].derived_expr.(^ast.Ident)
				fmt.println("Found enum:", enum_ident.name)
				enum_type := vd.values[0].derived_expr.(^ast.Enum_Type)
				codegen_type.kind = .Enum
				if enum_type.base_type != nil {
					codegen_type.base_type = enum_type.base_type.derived_expr.(^ast.Ident).name
				} else {
					codegen_type.base_type = "int"
				}
				val := 0
				for field in enum_type.fields {
					codegen_enum_field: Odin_Enum_Field
					#partial switch type in field.derived_expr {
					case ^ast.Field_Value:
						{
							val, _ = strconv.parse_int(
								type.value.derived_expr.(^ast.Basic_Lit).tok.text,
							)
							codegen_enum_field = {
								name  = field.derived_expr.(^ast.Field_Value).field.derived_expr.(^ast.Ident).name,
								value = val,
							}

						}
					case ^ast.Ident:
						{
							codegen_enum_field = {
								name  = type.derived_expr.(^ast.Ident).name,
								value = val,
							}
						}
					}
					append(&codegen_type.enum_fields, codegen_enum_field)
					val += 1
				}
				odin_types[enum_ident.name] = codegen_type
			case ^ast.Ident:
				ident := vd.names[0].derived_expr.(^ast.Ident).name
				fmt.println("Found alias:", ident)
				base_type := vd.values[0].derived_expr.(^ast.Ident).name
				codegen_type.kind = .Alias
				codegen_type.base_type = base_type
				odin_types[ident] = codegen_type
			case ^ast.Distinct_Type:
				codegen_type.kind = .Distinct
				ident := vd.names[0].derived_expr.(^ast.Ident).name
				fmt.println("Found disctinc:", ident)
				base_type :=
					vd.values[0].derived_expr.(^ast.Distinct_Type).type.derived_expr.(^ast.Ident).name
				codegen_type.base_type = base_type
				odin_types[ident] = codegen_type
			}

			if _, ok = vd.values[0].derived_expr.(^ast.Proc_Lit); !ok do continue
			if len(vd.attributes) != 1 do continue

			attr_ident := vd.attributes[0].elems[0].derived_expr.(^ast.Ident)
			// fmt.println(attr_ident)
			if attr_ident.name != "umka_fn" do continue
			codegen_type.kind = .Proc

			proc_ident := vd.names[0].derived_expr.(^ast.Ident)
			fmt.println()
			// fmt.println("proc name:", proc_ident.name)
			codegen_proc_name := proc_ident.name
			if proc_type, proc_type_ok := vd.values[0].derived_expr.(^ast.Proc_Lit); proc_type_ok {
				param_index := 1
				params := proc_type.type.params.list
				if params != nil {
					for param in params {
						for param_name in param.names {
							if param_type, param_type_ok := param.type.derived_expr.(^ast.Ident);
							   param_type_ok {
								codegen_param := Odin_Param_Type {
									name = param_name.derived_expr.(^ast.Ident).name,
									type = param_type.name,
								}
								append(&codegen_type.params, codegen_param)

								// fmt.printfln(
								// 	"arg %d:\n\tname: %v,\n\ttype: %v",
								// 	param_index,
								// 	param_name.derived_expr.(^ast.Ident).name,
								// 	param_type.name,
								// )
							}
							param_index += 1
						}
					}
				}
				// fmt.println(proc_type.type.results)
				results := proc_type.type.results
				if results != nil {
					for result in proc_type.type.results.list {
						result_index := 1
						if result_type, result_type_ok := result.type.derived_expr.(^ast.Ident);
						   result_type_ok {
							for result_name in result.names {
								odin_param_type := Odin_Param_Type {
									name = result_name.derived_expr.(^ast.Ident).name,
								}
								odin_param_type.type = result_type.name
								append(&codegen_type.returns, odin_param_type)
								// fmt.printfln(
								// 	"result %d: %v",
								// 	result_index,
								// 	result_name.derived_expr.(^ast.Ident).name,
								// )
								result_index += 1
								// fmt.printfln("result type: %v", result_type.name)
							}
							if len(result.names) == 0 {
								odin_result_type := Odin_Param_Type {
									type = result_type.name,
								}
								append(&codegen_type.returns, odin_result_type)

								// fmt.printfln("result type: %v", result_type.name)
							}
						}
					}
				}
			}
			odin_types[codegen_proc_name] = codegen_type


			// cmd := Codegen_Command {
			// 	file_path = proc_ident.pos.file,
			// 	line      = cast(i32)proc_ident.pos.line,
			// 	column    = cast(i32)proc_ident.pos.column,
			// 	procedure = proc_ident.name,
			// }

			// append(&cmds, cmd)
		}
	}
	for name, type in odin_types {
		if type.kind != .Builtin {
			fmt.printfln("%v: %#v", name, type)
		}
	}

	f, _ := os.open("./example/bindings.odin", os.O_WRONLY | os.O_CREATE | os.O_TRUNC, 0)
	defer os.close(f)
	fmt.fprintln(
		f,
		`//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package example

import "../umka"
import "base:runtime"
import "core:fmt"
`,
	)
	// if proc_type, proc_type_ok := vd.values[0].derived_expr.(^ast.Proc_Lit); proc_type_ok {
	for proc_name, type in odin_types {
		if type.kind == .Proc {
			fmt.println(type)
			for param in type.params {
				param_type := param.type
				fmt.println()
			}
			fmt.fprintfln(
				f,
				`umka_%s :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {{
	context = runtime.default_context()
`,
				proc_name,
			)
			for param, i in type.params {
				if param.type == "string" {
					fmt.fprintfln(
						f,
						`	c_%s := cast(^cstring)umka.GetParam(params, %d)`,
						param.name,
						i,
					)
					fmt.fprintfln(f, `	%s := string(c_%s^)`, param.name, param.name)
				} else {
					fmt.fprintfln(
						f,
						`	%s := cast(^%s)umka.GetParam(params, %d)`,
						param.name,
						param.type,
						i,
					)
				}
			}
			if len(type.returns) > 0 {
				stack_slot := StackSlot.ptrVal
				type_name := type.returns[0].type
				odin_type := odin_types[type_name]
				#partial switch odin_type.kind {
				case .Distinct:
					if umka_type, ok := odin_to_umka[odin_type.base_type]; ok {
						stack_slot = umka_type.stack_slot
					}
				case .Builtin:
					if umka_type, ok := odin_to_umka[type_name]; ok {
						stack_slot = umka_type.stack_slot
					}
				case .Alias:
					if umka_type, ok := odin_to_umka[odin_type.base_type]; ok {
						stack_slot = umka_type.stack_slot
					}
				}
				return_type: string
				switch stack_slot {
				case .intVal:
					return_type = "i64"
				case .ptrVal:
					return_type = "rawptr"
				case .uintVal:
					return_type = "u64"
				case .realVal:
					return_type = "f64"
				case .real32Val:
					return_type = "f32"
				}
				fmt.fprintf(f, `	res := %s(`, proc_name)
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if param.type == "string" {
							fmt.fprintf(f, `%s, `, param.name)
						} else {
							fmt.fprintf(f, `%s^, `, param.name)
						}
					} else {
						if param.type == "string" {
							fmt.fprintfln(f, `%s) `, param.name)
						} else {
							fmt.fprintfln(f, `%s^) `, param.name)
						}
					}
				}
				ptr_string := stack_slot == .ptrVal ? "&" : ""
				fmt.fprintfln(f, `	result.%s = cast(%s)%sres`, stack_slot, return_type, ptr_string)
			} else {
				fmt.fprintf(f, `	%s(`, proc_name)
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if param.type == "string" {
							fmt.fprintf(f, `%s, `, param.name)
						} else {
							fmt.fprintf(f, `%s^, `, param.name)
						}
					} else {
						if param.type == "string" {
							fmt.fprintfln(f, `%s) `, param.name)
						} else {
							fmt.fprintfln(f, `%s^) `, param.name)
						}
					}
				}
				if len(type.params) < 1 {
					fmt.fprintln(f, ")")
				}
			}
			fmt.fprintfln(f, `}}
				`)
		}
	}
	fmt.fprintln(f, `umka_add_bindings :: proc(ctx: ^umka.Context) {`)
	for proc_name, type in odin_types {
		if type.kind == .Proc {
			fmt.fprintfln(f, `	fmt.println("Adding %s")`, proc_name)
			fmt.fprintfln(f, `	umka.AddFunc(ctx^, "%s", umka_%s)`, proc_name, proc_name)
		}
	}

	added_types: fmt.fprintfln(f, `	rv := umka.AddModule(
		ctx^,
		"bindings.um",`)
	fmt.fprintln(f, "		`")
	fmt.fprintln(f, `		type (`)
	for struct_name, type in odin_types {
		if type.kind == .Struct {
			fmt.fprintfln(f, `			%s* = struct {{`, struct_name)
			for field in type.fields {
				fmt.fprintf(f, `				`)
				for name, i in field.names {
					type_name :=
						field.type in odin_to_umka ? odin_to_umka[field.type].name : field.type
					if i < len(field.names) - 1 {
						fmt.fprintf(f, `%s,`, name)
					} else {
						fmt.fprintfln(f, `%s: %s`, name, type_name)
					}
				}
			}
			fmt.fprintfln(f, `			}}`)

		}
	}
	for array_name, type in odin_types {
		if type.kind == .Array {
			type_name :=
				type.base_type in odin_to_umka ? odin_to_umka[type.base_type].name : type.base_type
			fmt.fprintfln(f, `			%s* = [%d]%s`, array_name, type.length, type_name)
		}
	}
	// TODO: Slices?
	for enum_name, type in odin_types {
		if type.kind == .Enum {

			backing_string :=
				type.base_type != "int" ? fmt.tprintf("(%s) ", odin_to_umka[type.base_type].name) : ""
			fmt.fprintfln(f, `			%s* = enum %s{{`, enum_name, backing_string)
			prev_val := -1
			for field in type.enum_fields {
				if field.value - prev_val > 1 {
					fmt.fprintfln(f, `				%s = %d`, field.name, field.value)
				} else {
					fmt.fprintfln(f, `				%s`, field.name)
				}
				prev_val = field.value
			}
			fmt.fprintfln(f, `			}}`)
		}
	}
	for alias_name, type in odin_types {
		if type.kind == .Alias || type.kind == .Distinct {
			type_name :=
				type.base_type in odin_to_umka ? odin_to_umka[type.base_type].name : type.base_type
			fmt.fprintfln(f, `			%s* = %s`, alias_name, type_name)
		}
	}
	fmt.fprintln(f, `		)`)

	for proc_name, type in odin_types {
		if type.kind == .Proc {
			fmt.fprintf(f, `		fn %s*(`, proc_name)
			if len(type.params) < 1 {
				fmt.fprint(f, `)`)
			}
			for param, i in type.params {
				param_type :=
					param.type in odin_to_umka ? odin_to_umka[param.type].name : param.type
				if i < len(type.params) - 1 {
					fmt.fprintf(f, `%s: %s, `, param.name, param_type)
				} else {
					fmt.fprintf(f, `%s: %s)`, param.name, param_type)
				}
			}
			if len(type.returns) > 0 {
				return_type :=
					type.returns[0].type in odin_to_umka ? odin_to_umka[type.returns[0].type].name : type.returns[0].type
				fmt.fprintf(f, `: %s`, return_type)
			}
			fmt.fprintfln(f, "")
		}
	}
	fmt.fprintln(f, "	`,")
	fmt.fprintln(f, "	)")
	fmt.fprintln(f, `}`)
}


// proc_list: [dynamic]runtime.Type_Info
// append(&proc_list, proc_type^)
// for _proc in proc_list {
// 	variant := _proc.variant
// 	if proc_type_info, proc_type_info_ok := variant.(runtime.Type_Info_Procedure);
// 		proc_type_info_ok {
// 		fmt.println(proc_type_info)
// 		fmt.println(example.add)
// 	}
// }
