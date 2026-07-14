package umkagen

import "base:builtin"
import "base:runtime"
import "core:fmt"
import "core:odin"
import "core:odin/ast"
import "core:odin/parser"
import "core:os"
import "core:path/filepath"
import "core:path/slashpath"
import "core:slice"
import "core:strconv"
import "core:strings"


Type_Kind :: enum {
	Unimplemented,
	Pointer,
	Call_Expr,
	Proc,
	Proc_Type,
	Proc_Group,
	Param,
	Struct,
	Builtin,
	Array,
	Slice,
	Enum,
	Alias,
	Distinct,
	Binary_Expr,
	Unary_Expr,
	Comp_Lit,
	Basic_Lit,
	Tag_Expr,
	Bit_Set,
	Helper,
	MultiPointer,
	Field,
	Ident,
	String_Lit,
	Float_Lit,
	Integer_Lit,
	Bool_Lit,
	Quaternion_Lit,
	Matrix,
	Ellipsis,
	Implicit_Selector,
}

Package :: struct {
	parse:                  bool,
	generate:               bool,
	generate_umi:           bool,
	types:                  map[string]Type,
	input_path:             string,
	output_path:            string,
	odin_package_name:      string,
	odin_file_name:         string,
	umka_module_name:       string,
	umka_modules_to_import: []string,
	ignore_types:           []string,
}

Type :: struct {
	pkg:          string,
	kind:         Type_Kind,
	base_type:    ^Type,
	underlying:   ^Type,
	names:        [dynamic]string,
	fields:       [dynamic]Type,
	params:       [dynamic]Type,
	returns:      [dynamic]Type,
	dependencies: map[string]struct{},
	length:       int,
	value:        Define_Value,
	lowest:       int,
	left:         ^Type,
	right:        ^Type,
}

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

temp_types: [dynamic]Type

init_default :: proc(arena_allocator: ^runtime.Arena = nil) {
	if arena_allocator != nil {

	}
}

generate :: proc() {

	// r, w, pipe_err := os.pipe()
	// if pipe_err != nil {
	// 	fmt.eprintln("Pipe error:", pipe_err)
	// 	return
	// }

	// p, start_err := os.process_start({command = {"odin", "root"}, stdout = w})

	// os.close(w)

	// if start_err != nil {
	// 	fmt.eprintln("Start error:", start_err)
	// 	os.close(r)
	// 	return
	// }

	// output, read_err := os.read_entire_file(r, context.temp_allocator)
	// os.close(r)

	// // 4. Wait for process to clean up
	// state, proc_err := os.process_wait(p)

	// // 5. Clean up the string
	// root_path := strings.trim_space(string(output))
	// fmt.println("Odin root is:", root_path)
	// dd()
	for pkg in packages {
		if packages[pkg].parse {
			parse_package(&packages[pkg])
		}
	}

	fmt.println("Generating bindings")
	for name, pkg in packages {
		if pkg.generate {
			generate_bindings(pkg, name)
			output_file := fmt.aprintf("%s/%s", pkg.output_path, pkg.umka_module_name)
			f, _ := os.open(output_file, os.O_WRONLY | os.O_CREATE | os.O_TRUNC)
			generate_um_file(pkg, name, f)
			os.close(f)
		}
		if pkg.generate_umi {
			generate_umi(pkg, name)
			output_file := fmt.aprintf("%s/umi/%s", pkg.output_path, pkg.umka_module_name)
			f, _ := os.open(output_file, os.O_WRONLY | os.O_CREATE | os.O_TRUNC)
			os.close(f)
			generate_um_file(pkg, name, f)
		}
	}
}

generate_umi :: proc(odin_pkg: Package, pkg_name: string) {
	// dd(odin_pkg.types["RAYLIB_SHARED"]) // @TODO: Why is this an identifier?
	file_name: string
	if odin_pkg.odin_file_name != "" {
		file_name = fmt.aprintf("%s", odin_pkg.odin_file_name)
	} else {
		file_name = fmt.aprintf("%s.odin", odin_pkg.odin_package_name)
	}
	output_file := fmt.aprintf("%s/umi/%s", odin_pkg.output_path, file_name)
	f, _ := os.open(output_file, os.O_WRONLY | os.O_CREATE | os.O_TRUNC)
	defer os.close(f)

	// pkg_name: string
	pkg_name := odin_pkg.odin_package_name == pkg_name ? "" : pkg_name

	fmt.fprintfln(
		f,
		`//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package %s
`,
		odin_pkg.odin_package_name,
	)
	for pkg in odin_packages_to_import {
		fmt.fprintfln(
			f,
			`import%s "%s"`,
			pkg.alias != "" ? fmt.aprintf(" %s", pkg.alias) : "",
			pkg.path[:3] == "../" ? fmt.aprintf("../%s", pkg.path) : pkg.path,
		)
	}
	// if proc_type, proc_type_ok := vd.values[0].derived_expr.(^ast.Proc_Lit); proc_type_ok {
	for proc_name, type in odin_pkg.types {
		if type.kind == .Proc {
			// fmt.println(type)
			// for param in type.params {

			// 	param_type := param.base_type
			// 	fmt.println()
			// }
			fmt.fprintln(f, "@(export = true)")
			fmt.fprintfln(
				f,
				`um_%s :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {{
	context = runtime.default_context()
`,
				proc_name,
			)
			fmt.fprintln(f, "instance := umka.get_instance(result)")
			fmt.fprintln(f, "api := umka.get_api(instance)")
			for param, i in type.params {
				// fmt.println(proc_name)
				// fmt.printfln("%#v", type)
				// fmt.printfln("%#v", param)
				base_type_name := odin_base_type_name(param.base_type, pkg_name)
				if base_type_name == "string" {
					fmt.fprintfln(
						f,
						`	c_%s := cast(^cstring)api.umkaGetParam(params, %d)`,
						param.names[0],
						i,
					)
					fmt.fprintfln(f, `	%s := string(c_%s^)`, param.names[0], param.names[0])
				} else {

					fmt.fprintfln(
						f,
						`	%s := cast(^%s)api.umkaGetParam(params, %d)`,
						param.names[0],
						base_type_name,
						i,
					)
				}
			}
			if len(type.returns) > 0 {
				stack_slot := StackSlot.ptrVal
				type_name := type.returns[0].base_type.names[0]
				odin_type :=
					type_name in packages["builtin"].types ? packages["builtin"].types[type_name] : odin_pkg.types[type_name]
				#partial switch odin_type.kind {
				case .Distinct:
					if odin_type.base_type^.kind == .Ident {
						if umka_type, ok :=
							   odin_to_umka[odin_base_type_name(odin_type.base_type, pkg_name)];
						   ok {
							stack_slot = umka_type.stack_slot
						}
					}
				case .Builtin:
					if umka_type, ok := odin_to_umka[type_name]; ok {
						stack_slot = umka_type.stack_slot
					}
				case .Alias:
					if umka_type, ok :=
						   odin_to_umka[odin_base_type_name(odin_type.base_type, pkg_name)]; ok {
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
				if pkg_name == "" {
					fmt.fprintf(f, `	res := %s(`, proc_name)
				} else {
					fmt.fprintf(f, `	res := %s.%s(`, pkg_name, proc_name)
				}
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s, `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^, `, param.names[0])
						}
					} else {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^ `, param.names[0])
						}
					}
				}

				fmt.fprintln(f, ")")
				ptr_string := stack_slot == .ptrVal ? "&" : ""
				fmt.fprintfln(
					f,
					`	api.umkaGetResult(params, result).%s = cast(%s)%sres`,
					stack_slot,
					return_type,
					ptr_string,
				)
			} else {
				if pkg_name == "" {
					fmt.fprintf(f, `	%s(`, proc_name)
				} else {
					fmt.fprintf(f, `	%s.%s(`, pkg_name, proc_name)
				}
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s, `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^, `, param.names[0])
						}
					} else {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintfln(f, `%s) `, param.names[0])
						} else {
							fmt.fprintfln(f, `%s^) `, param.names[0])
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
}

add_package :: proc(name: string, pkg: Package) {
	packages[name] = pkg
}

add_odin_package_to_import :: proc(packages: ..Package_Import) {
	append(&odin_packages_to_import, ..packages)
}

parse_package :: proc(odin_pkg: ^Package) {
	pkg, ok := parser.parse_package_from_path(odin_pkg.input_path)
	if !ok {
		fmt.println("error: failed to read package")
		os.exit(1)
	}
	assert(pkg.kind == .Normal)
	fmt.println("Read pkg")
	for file_name, file in pkg.files {
		if file_name != "" {
			new_path, ok := filepath.replace_separators(file_name, '/')
			if slashpath.base(new_path) == odin_pkg.odin_file_name {
				continue
			}

		}
		fmt.println("Reading:", file_name)
		for decl in file.decls {
			get_types(decl, odin_pkg)
		}
	}

}

get_types :: proc(stmt: ^ast.Stmt, odin_pkg: ^Package) {
	#partial switch decl in stmt.derived_stmt {
	case ^ast.Value_Decl:
		if decl.is_mutable do return
		if len(decl.values) < 1 do return
		#partial switch kind in decl.values[0].derived_expr {
		case ^ast.Proc_Lit:
			if only_marked_fns {
				if len(decl.attributes) <= 0 do return
				if attr_ident, ok := decl.attributes[0].elems[0].derived_expr.(^ast.Ident); ok {
					if attr_ident.name != "umka_fn" do return
				} else {
					return
				}
			}
		case ^ast.Proc_Type:
			return
		// if only_marked_fns {
		// 	if len(decl.attributes) <= 0 do return
		// 	if attr_ident, ok := decl.attributes[0].elems[0].derived_expr.(^ast.Ident); ok {
		// 		if attr_ident.name != "umka_fn" do return
		// 	} else {
		// 		return
		// 	}
		// }
		case ^ast.Proc_Group:
			return
		}
		type_name := decl.names[0].derived_expr.(^ast.Ident).name
		if slice.contains(odin_pkg.ignore_types, type_name) do return
		// if type_name == "RAYLIB_SHARED" do fmt.printfln("%#v", decl.values[0].derived_expr)

		type := get_type(decl.values[0].derived_expr)
		if type.kind == .Ident {
			if !(type.names[0] in packages["builtin"].types) &&
			   !slice.contains(keywords, type.names[0]) {
				type.dependencies[type.names[0]] = {}
			}
		}
		if (type_name == "CONST_STRUCT_C") {
			// dd(type.fields[0].fields[0])
			// dd(type.fields)
		}
		// fmt.printfln("%#v", type)
		odin_pkg.types[type_name] = type^
		return
	case ^ast.Foreign_Block_Decl:
		for foreign_decl in decl.body.derived_stmt.(^ast.Block_Stmt).stmts {
			// fmt.printfln("%#v", typeid_of(type_of(foreign_decl.derived_stmt.(^ast.Value_Decl))))
			get_types(foreign_decl, odin_pkg)
		}
	// fmt.printfln("%#v", decl.body.derived_stmt.(^ast.Block_Stmt))
	// get_types(decl.body.derived_stmt)
	case:
	}
}

get_type :: proc(derived_expr: ast.Any_Expr) -> ^Type {
	codegen_type := new(Type)
	ok: bool

	#partial switch type in derived_expr {
	case ^ast.Basic_Lit:
		// Integer, // 12345
		// Float,   // 123.45
		// String,  // "abc"
		// Unimplemented
		// Ident,   // main
		// Imag,    // 123.45i
		// Rune,    // 'a'
		#partial switch type.tok.kind {
		case .String:
			codegen_type.kind = .String_Lit
		case .Float:
			codegen_type.kind = .Float_Lit
		// codegen_type.value, _ = strconv.parse_f64(type.tok.text)
		case .Integer:
			codegen_type.kind = .Integer_Lit
		// codegen_type.value, _ = strconv.parse_int(type.tok.text)
		}
		codegen_type.value = type.tok.text
	case ^ast.Pointer_Type:
		codegen_type.kind = .Pointer
		codegen_type.base_type = get_type(type.elem.derived_expr)
		codegen_type.dependencies = codegen_type.base_type.dependencies
	case ^ast.Multi_Pointer_Type:
		// [^]T
		codegen_type.kind = .MultiPointer
		base_type := get_type(type.elem.derived_expr)
		codegen_type.base_type = base_type
		codegen_type.dependencies = base_type.dependencies
	case ^ast.Selector_Expr:
		// foo.bar
		pkg := type.expr.derived_expr.(^ast.Ident).name
		codegen_type = get_type(type.field)
		codegen_type.pkg = pkg
	case ^ast.Struct_Type:
		// foo :: struct { ... }
		codegen_type.kind = .Struct
		for field in type.fields.list {
			codegen_field := Type {
				kind = .Field,
			}
			base_type := get_type(field.type.derived_expr)
			if base_type.pkg == "" &&
			   len(base_type.names) > 0 &&
			   !(base_type.names[0] in packages["builtin"].types) {
				codegen_field.dependencies[base_type.names[0]] = {}
			}
			// fmt.printfln("%#v", base_type)
			// fmt.printfln("%#v", temp_types[len(temp_types) - 1])
			codegen_field.base_type = base_type
			for name in field.names {
				field_name := name.derived_expr.(^ast.Ident).name
				append(&codegen_field.names, field_name)
			}
			// fmt.printfln("%#v", codegen_field)
			append(&codegen_type.fields, codegen_field)
		}
		for field in codegen_type.fields {
			for dependency in field.dependencies {
				if dependency not_in codegen_type.dependencies {
					codegen_type.dependencies[dependency] = {}
				}
			}
		}
	case ^ast.Array_Type:
		// [N]T or []T
		base_type := get_type(type.elem.derived_expr)
		codegen_type.base_type = base_type
		if (type.len != nil) {
			length_string := type.len.derived_expr.(^ast.Basic_Lit).tok.text
			length, ok := strconv.parse_int(length_string)
			codegen_type.kind = .Array
			codegen_type.length = length
		} else {
			codegen_type.kind = .Slice
		}

	case ^ast.Enum_Type:
		// foo :: enum { ... } or foo :: enum T { ... }
		codegen_type.kind = .Enum
		if type.base_type != nil {
			codegen_type.base_type = get_type(type.base_type.derived_expr)
		} else {
			base_type := new(Type)
			base_type.kind = .Builtin
			append(&base_type.names, "int")
			codegen_type.base_type = base_type
		}
		val: i128 = 0
		lowest: i128 = 1 << 64
		highest: i128 = -1 << 64
		for field in type.fields {
			codegen_enum_field := new(Type)
			codegen_enum_field = &{kind = .Field}
			#partial switch type in field.derived_expr {
			case ^ast.Field_Value:
				{
					#partial switch value_type in type.value.derived_expr {
					case ^ast.Basic_Lit:
						val, _ = strconv.parse_i128(
							type.value.derived_expr.(^ast.Basic_Lit).tok.text,
						)
						codegen_enum_field.value = int(val)
					case ^ast.Binary_Expr:
						left := value_type.left.derived_expr.(^ast.Basic_Lit).tok.text
						right := value_type.right.derived_expr.(^ast.Basic_Lit).tok.text
						op := value_type.op.text
						codegen_enum_field.value = fmt.aprintf("%s %s %s", left, op, right)

						switch op {
						case "<<":
							left_val, left_ok := strconv.parse_uint(left)
							right_val, right_ok := strconv.parse_uint(right)
							val = i128(left_val << right_val)
						}
					}
					append(
						&codegen_enum_field.names,
						field.derived_expr.(^ast.Field_Value).field.derived_expr.(^ast.Ident).name,
					)

				}
			case ^ast.Ident:
				{
					append(&codegen_enum_field.names, type.derived_expr.(^ast.Ident).name)
					codegen_enum_field.value = int(val)

				}
			}
			append(&codegen_type.fields, codegen_enum_field^)
			lowest = val < lowest ? val : lowest
			highest = val > highest ? val : highest
			val += 1
		}
		codegen_type.length = int(highest - lowest) + 1
		codegen_type.lowest = int(lowest)
	case ^ast.Ident:
		codegen_type.kind = .Ident
		append(&codegen_type.names, type.name)
	case ^ast.Distinct_Type:
		// foo :: distinct T
		codegen_type.kind = .Distinct
		codegen_type.base_type = get_type(type.type.derived_expr)
	case ^ast.Proc_Type:
		codegen_type.kind = .Unimplemented
		unimplemented(fmt.tprintf("Proc Type not implemented yet \n%#v", type))
	case ^ast.Proc_Group:
		codegen_type.kind = .Unimplemented
		unimplemented(fmt.tprintf("Proc Group type not implemented yet \n%#v", type))
	case ^ast.Call_Expr:
		// Currently only for #config, unsure if it works for other
		// FOO :: #config(FOO, default)

		#partial switch call_expr in type.expr.derived_expr {
		case ^ast.Basic_Directive:
			define_name := get_type(type.args[0].derived_expr).names[0]
			value_type := get_type(type.args[1].derived_expr)
			codegen_type.kind = value_type.kind
			if define_name in define_overrides {
				value := define_overrides[define_name]
				if codegen_type.kind == Type_Kind.Ident {
					append(&codegen_type.names, value.(string))
				} else {
					codegen_type.value = value
				}
			} else {
				if codegen_type.kind == Type_Kind.Ident {
					if value_type.names[0] == "false" || value_type.names[0] == "true" {
						codegen_type.kind = .Bool_Lit
						codegen_type.value = value_type.names[0] == "true" ? true : false
					} else {
						append(&codegen_type.names, value_type.names[0])
					}
				} else {
					codegen_type.value = value_type.value
				}
			}
		case ^ast.Ident:
			if call_expr.name == "quaternion" {
				codegen_type.kind = .Quaternion_Lit
				for arg in type.args {
					field := arg.derived_expr.(^ast.Field_Value)
					append(&codegen_type.fields, get_type(field.value.derived_expr)^)
				}
			}
		}

	case ^ast.Binary_Expr:
		// TODO! Range bit sets
		// foo OP bar
		codegen_type.kind = .Binary_Expr
		codegen_type.left = get_type(type.left.derived_expr)
		codegen_type.right = get_type(type.right.derived_expr)
		for dependency in codegen_type.left.dependencies {
			if dependency not_in codegen_type.dependencies {
				codegen_type.dependencies[dependency] = {}
			}
		}
		for dependency in codegen_type.right.dependencies {
			if dependency not_in codegen_type.dependencies {
				codegen_type.dependencies[dependency] = {}
			}
		}
		codegen_type.value = type.op.text
	case ^ast.Unary_Expr:
		codegen_type.kind = .Unary_Expr
		codegen_type.value = type.op.text
		codegen_type.base_type = get_type(type.expr.derived_expr)
	case ^ast.Paren_Expr:
		unimplemented("Todo: Paren_Expr")
	case ^ast.Field_Value:
		field_value := type.derived_expr.(^ast.Field_Value)
		codegen_type = get_type(field_value.value.derived_expr)
	case ^ast.Comp_Lit:
		// FOO :: T{ ... }
		codegen_type.kind = .Comp_Lit
		if type.type != nil {
			base_type := get_type(type.type.derived_expr)
			if ident, ok := type.type.derived_expr.(^ast.Ident); ok {
				append(&base_type.names, ident.name)
			}
			codegen_type.base_type = base_type
		}

		for elem in type.elems {
			elem_type := get_type(elem.derived_expr)
			for dependency in elem_type.dependencies {
				codegen_type.dependencies[dependency] = {}
			}
			if elem_type.kind == .Ident {
				codegen_type.dependencies[elem_type.names[0]] = {}
			}
			append(&codegen_type.fields, elem_type^)
		}
		a := 1
	// dd(codegen_type)
	// unimplemented(fmt.tprintf("Comp Lit type not implemented yet \n%#v", type))
	case ^ast.Implicit_Selector_Expr:
		codegen_type.kind = .Implicit_Selector
		codegen_type.value = type.field.name
	case ^ast.Tag_Expr:
		// for example #row_major in:
		// Foo :: #row_major matrix[4,4]f32
		codegen_type.kind = .Tag_Expr
		append(&codegen_type.names, type.name)
		codegen_type.base_type = get_type(type.expr.derived_expr)
		fmt.printfln("%#v", codegen_type)
	// fmt.println(size_of(raylib.Matrix))
	// matrix_type := type.expr.derived_expr.(^ast.Matrix_Type)
	// fmt.printfln("%#v", matrix_type)
	// fmt.printfln(
	// 	"Columns: %#v",
	// matrix_type.column_count.derived_expr.(^ast.Basic_Lit).tok.text,
	// )
	// fmt.printfln("Rows: %#v", matrix_type.row_count.derived_expr.(^ast.Basic_Lit).tok.text)
	case ^ast.Matrix_Type:
		// matrix[cols, rows]T
		codegen_type.kind = .Matrix
		columns, _ := strconv.parse_int(type.column_count.derived_expr.(^ast.Basic_Lit).tok.text)
		rows, _ := strconv.parse_int(type.row_count.derived_expr.(^ast.Basic_Lit).tok.text)
		codegen_type.base_type = get_type(type.elem.derived_expr)
		codegen_type.length = columns * rows
	case ^ast.Bit_Set_Type:
		//TODO: Update enum to have a length indicating the range from smallest to largest
		codegen_type.kind = .Bit_Set
		base_type := get_type(type.elem.derived_expr)
		codegen_type.base_type = base_type
		if type.underlying != nil {
			codegen_type.underlying = get_type(type.underlying.derived_expr)
		}
		// if type.underlying != nil do dd(get_type(type.underlying.derived_expr))
		if base_type.kind == .Ident {
			name := base_type.names[0]
			codegen_type.dependencies[name] = {}
		}
		for dependency in codegen_type.base_type.dependencies {
			if dependency not_in codegen_type.dependencies {
				codegen_type.dependencies[dependency] = {}
			}
		}
	case ^ast.Helper_Type:
		codegen_type.kind = .Helper
	case ^ast.Proc_Lit:
		// foo :: proc(...) -> (...)
		codegen_type.kind = .Proc
		param_index := 1
		params := type.type.params.list
		if params != nil {
			for param in params {
				for param_name in param.names {
					base_type := get_type(param.type.derived_expr)
					codegen_param := Type {
						kind      = .Param,
						base_type = base_type,
					}
					append(&codegen_param.names, param_name.derived_expr.(^ast.Ident).name)
					append(&codegen_type.params, codegen_param)
				}
				param_index += 1

			}
		}
		// fmt.println(proc_type.type.results)
		results := type.type.results
		if results != nil {
			for result in type.type.results.list {
				result_index := 1
				if result_type, result_type_ok := result.type.derived_expr.(^ast.Ident);
				   result_type_ok {
					base_type := get_type(result_type.derived_expr)
					for result_name in result.names {
						odin_param_type := Type {
							kind      = .Param,
							base_type = base_type,
						}
						append(&odin_param_type.names, result_name.derived_expr.(^ast.Ident).name)
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
						odin_result_type := Type {
							kind      = .Param,
							base_type = base_type,
						}
						append(&codegen_type.returns, odin_result_type)

						// fmt.printfln("result type: %v", result_type.name)
					}
				}
			}
		}
	case ^ast.Ellipsis:
		codegen_type.kind = .Ellipsis
		codegen_type.base_type = get_type(type.expr.derived_expr)
	case:
		fmt.printfln("%#v", type)
	// codegen_type.base_type = base_type.name
	// if base_type in codegen_type.dependencies == false {
	// 	if base_type in odin_types {
	// 		if odin_types[base_type].kind != .Builtin {
	// 			codegen_type.dependencies[base_type] = {}
	// 		}
	// 	} else {
	// 		codegen_type.dependencies[base_type] = {}
	// 	}
	// }
	// odin_types[ident] = codegen_type
	}

	base_type := codegen_type.base_type
	if codegen_type.base_type != nil && codegen_type.base_type.kind == .Ident {
		if !(base_type.names[0] in packages["builtin"].types) {
			codegen_type.dependencies[base_type.names[0]] = {}
		}
	}
	return codegen_type
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


// TODO: Fix this!

umka_base_type_name :: proc(base_type: Type) -> string {
	name: string
	#partial switch base_type.kind {
	// TODO: Correct??
	case .Pointer:
		name = fmt.aprintf("^%s", umka_base_type_name(base_type.base_type^))
	case .Array:
		name = fmt.aprintf("[%d]%s", base_type.length, umka_base_type_name(base_type.base_type^))
	case .MultiPointer:
		name = fmt.aprintf("%s%s", "^", umka_base_type_name(base_type.base_type^))
	case .Ellipsis:
		name = fmt.aprintf("[]%s", umka_base_type_name(base_type.base_type^))
	case .Quaternion_Lit:
		name = "[4]real32"
	case .Ident:
		pkg_prefix := base_type.pkg == "" ? "" : fmt.aprintf("%s::", base_type.pkg)
		name = fmt.aprintf("%s%s", pkg_prefix, base_type.names[0])
	case:
		if len(base_type.names) == 0 {
			// dd(base_type)
		}
		name = base_type.names[0]
	}
	if name == "type" {
		name = "type_"
	}
	return name in odin_to_umka ? odin_to_umka[name].name : name
}

odin_base_type_name :: proc(base_type: ^Type, pkg_name: string) -> string {
	base_type_name: string
	if base_type.kind == .Ident {
		base_type_name = base_type.names[0]
	} else {
		base_type_name = odin_base_type_name(base_type.base_type, pkg_name)
	}
	pkg_prefix: string
	if base_type.pkg != "" {
		pkg_prefix = fmt.tprintf("%s.", base_type.pkg)
	} else if t, ok := packages["builtin"].types[base_type_name]; ok && t.kind == .Builtin {
		pkg_prefix = ""
	} else if pkg_name == "" {
		pkg_prefix = ""
	} else {
		pkg_prefix = fmt.tprintf("%s.", pkg_name)
	}
	#partial switch base_type.kind {
	case .Pointer:
		return fmt.aprintf("^%s", base_type_name)
	case .MultiPointer:
		return fmt.aprintf("[^]%s", base_type_name)
	case .Ident:
		return fmt.aprintf("%s%s", pkg_prefix, base_type_name)
	case:
		return fmt.aprintf("%s%s", pkg_prefix, base_type_name)
	}
}

generate_bindings :: proc(odin_pkg: Package, pkg_name: string) {
	// dd(odin_pkg.types["RAYLIB_SHARED"]) // @TODO: Why is this an identifier?
	file_name: string
	if odin_pkg.odin_file_name != "" {
		file_name = fmt.aprintf("%s", odin_pkg.odin_file_name)
	} else {
		file_name = fmt.aprintf("%s.odin", odin_pkg.odin_package_name)
	}
	output_file := fmt.aprintf("%s%s", odin_pkg.output_path, file_name)
	f, _ := os.open(output_file, os.O_WRONLY | os.O_CREATE | os.O_TRUNC)
	defer os.close(f)

	// pkg_name: string
	pkg_name := odin_pkg.odin_package_name == pkg_name ? "" : pkg_name

	fmt.fprintfln(
		f,
		`//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package %s
`,
		odin_pkg.odin_package_name,
	)
	for pkg in odin_packages_to_import {
		fmt.fprintfln(
			f,
			`import%s "%s"`,
			pkg.alias != "" ? fmt.aprintf(" %s", pkg.alias) : "",
			pkg.path,
		)
	}
	// if proc_type, proc_type_ok := vd.values[0].derived_expr.(^ast.Proc_Lit); proc_type_ok {
	for proc_name, type in odin_pkg.types {
		if type.kind == .Proc {
			// fmt.println(type)
			// for param in type.params {

			// 	param_type := param.base_type
			// 	fmt.println()
			// }
			fmt.fprintfln(
				f,
				`umka_%s :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {{
	context = runtime.default_context()
`,
				proc_name,
			)
			for param, i in type.params {
				// fmt.println(proc_name)
				// fmt.printfln("%#v", type)
				// fmt.printfln("%#v", param)
				base_type_name := odin_base_type_name(param.base_type, pkg_name)
				if base_type_name == "string" {
					fmt.fprintfln(
						f,
						`	c_%s := cast(^cstring)umka.GetParam(params, %d)`,
						param.names[0],
						i,
					)
					fmt.fprintfln(f, `	%s := string(c_%s^)`, param.names[0], param.names[0])
				} else {

					fmt.fprintfln(
						f,
						`	%s := cast(^%s)umka.GetParam(params, %d)`,
						param.names[0],
						base_type_name,
						i,
					)
				}
			}
			if len(type.returns) > 0 {
				stack_slot := StackSlot.ptrVal
				type_name := type.returns[0].base_type.names[0]
				odin_type :=
					type_name in packages["builtin"].types ? packages["builtin"].types[type_name] : odin_pkg.types[type_name]
				#partial switch odin_type.kind {
				case .Distinct:
					if odin_type.base_type^.kind == .Ident {
						if umka_type, ok :=
							   odin_to_umka[odin_base_type_name(odin_type.base_type, pkg_name)];
						   ok {
							stack_slot = umka_type.stack_slot
						}
					}
				case .Builtin:
					if umka_type, ok := odin_to_umka[type_name]; ok {
						stack_slot = umka_type.stack_slot
					}
				case .Alias:
					if umka_type, ok :=
						   odin_to_umka[odin_base_type_name(odin_type.base_type, pkg_name)]; ok {
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
				if pkg_name == "" {
					fmt.fprintf(f, `	res := %s(`, proc_name)
				} else {
					fmt.fprintf(f, `	res := %s.%s(`, pkg_name, proc_name)
				}
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s, `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^, `, param.names[0])
						}
					} else {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^ `, param.names[0])
						}
					}
				}

				fmt.fprintln(f, ")")
				ptr_string := stack_slot == .ptrVal ? "&" : ""
				fmt.fprintfln(f, `	result.%s = cast(%s)%sres`, stack_slot, return_type, ptr_string)
			} else {
				if pkg_name == "" {
					fmt.fprintf(f, `	%s(`, proc_name)
				} else {
					fmt.fprintf(f, `	%s.%s(`, pkg_name, proc_name)
				}
				for param, i in type.params {
					if i < len(type.params) - 1 {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintf(f, `%s, `, param.names[0])
						} else {
							fmt.fprintf(f, `%s^, `, param.names[0])
						}
					} else {
						if odin_base_type_name(param.base_type, pkg_name) == "string" {
							fmt.fprintfln(f, `%s) `, param.names[0])
						} else {
							fmt.fprintfln(f, `%s^) `, param.names[0])
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
	fmt.fprintln(f, `umka_add_bindings :: proc(ctx: ^umka.Umka) {`)
	for proc_name, type in odin_pkg.types {
		if type.kind == .Proc {
			fmt.fprintfln(f, `	fmt.println("Adding %s")`, proc_name)
			fmt.fprintfln(f, `	umka.AddFunc(ctx, "%s", umka_%s)`, proc_name, proc_name)
		}
	}


	fmt.fprintfln(
		f,
		`	rv := umka.AddModule(
		ctx,
		"%s", 
		#load("./%s", cstring)`,
		odin_pkg.umka_module_name,
		odin_pkg.umka_module_name,
	)
	fmt.fprintln(f, "	)")
	fmt.fprintln(f, `}`)
}

generate_um_file :: proc(odin_pkg: Package, pkg_name: string, f: ^os.File) {
	unresolved_types: map[string]struct{}
	added_types: map[string]struct{}
	prev_unresolved_count := 0

	fmt.fprintln(f, `type (`)
	for {
		for type_name, type in odin_pkg.types {
			if type.kind == .Comp_Lit ||
			   type.kind == .Bool_Lit ||
			   type.kind == .Basic_Lit ||
			   type.kind == .Float_Lit ||
			   type.kind == .String_Lit ||
			   type.kind == .Integer_Lit ||
			   type.kind == .Quaternion_Lit {
				continue
			}
			if type_name in added_types do continue
			unresolved_dependency := false
			for dependency in type.dependencies {
				if dependency in added_types == false {
					unresolved_dependency = true
					unresolved_types[type_name] = {}
				}
			}
			if unresolved_dependency {
				continue
			}
			if type_name in unresolved_types {
				delete_key(&unresolved_types, type_name)
			}
			#partial switch type.kind {
			case .Struct:
				fmt.fprintfln(f, `	%s* = struct {{`, type_name)
				for field in type.fields {
					fmt.fprintf(f, `		`)
					for name, i in field.names {

						umka_type_name := umka_base_type_name(field.base_type^)
						if i < len(field.names) - 1 {
							fmt.fprintf(f, `%s,`, name)
						} else {
							fmt.fprintfln(f, `%s: %s`, name, umka_type_name)
						}
					}
				}
				fmt.fprintfln(f, `	}}`)
			case .Array:
				umka_type_name :=
					type.base_type.names[0] in odin_to_umka ? odin_to_umka[type.base_type.names[0]].name : type.base_type.names[0]
				fmt.fprintfln(f, `	%s* = [%d]%s`, type_name, type.length, umka_type_name)
			case .Matrix:
				if type.base_type == nil do continue
				umka_type_name := type.base_type.base_type.names[0]
				umka_type_name =
					umka_type_name in odin_to_umka ? odin_to_umka[umka_type_name].name : umka_type_name
				fmt.fprintfln(f, `	%s* = [%d]%s`, type_name, type.base_type.length, umka_type_name)
			case .Enum:
				backing_string :=
					type.base_type.names[0] != "int" ? fmt.tprintf("(%s) ", odin_to_umka[type.base_type.names[0]].name) : ""
				fmt.fprintfln(f, `	%s* = enum %s{{`, type_name, backing_string)
				prev_val := -1
				for field in type.fields {
					fmt.fprintfln(f, `		%s = %v`, field.names[0], field.value)
				}
				fmt.fprintfln(f, `	}}`)
			case .Ident:
				umka_type_name :=
					type.names[0] in odin_to_umka ? odin_to_umka[type.names[0]].name : type.names[0]
				fmt.fprintfln(f, `	%s* = %s`, type_name, umka_type_name)
			case .Distinct:
				umka_type_name: string
				// type.base_type.names[0] in odin_to_umka ? odin_to_umka[type.base_type.names[0]].name : type.base_type.names[0]
				#partial switch type.base_type.kind {
				case .Array:
					base_type_name := type.base_type.base_type.names[0]
					base_type_name =
						base_type_name in odin_to_umka ? odin_to_umka[base_type_name].name : base_type_name
					umka_type_name = fmt.aprintf("[%d]%s", type.base_type.length, base_type_name)
				case .Bit_Set:
					umka_type_name = fmt.aprintf("[]%s", type.base_type.base_type.names[0])
				case:
					fmt.println(type.base_type)

				}
				fmt.fprintfln(f, `	%s* = %s`, type_name, umka_type_name)
			case .Bit_Set:
				umka_type_name: string
				// dd(type, type_name)
				if type.underlying != nil {
					umka_type_name = umka_base_type_name(type.underlying^)
				} else {
					umka_type_name = "uint8"
				}
				fmt.fprintfln(f, `	%s = struct {{
		bits: %s
	}}`, type_name, umka_type_name)

			case:
				continue
			}
			added_types[type_name] = {}
		}
		unresolved_count := len(unresolved_types)
		fmt.printfln("Unresolved types:")
		for unresolved in unresolved_types {
			// fmt.println(unresolved)
			// fmt.printfln("%#v", odin_types[unresolved])
		}
		if unresolved_count == 0 {
			break
		} else {
			assert(
				prev_unresolved_count != unresolved_count,
				fmt.aprintf("Unresolved types: %#v", unresolved_types),
			)
			prev_unresolved_count = unresolved_count
		}
	}
	fmt.fprintln(f, `)`)
	generate_literal :: proc(type: Type, pkg: Package, depth: int = 0) -> string {
		#partial switch type.kind {
		case .Quaternion_Lit, .Comp_Lit:
			return generate_comp_literal(type, pkg, depth)
		case .Unary_Expr:
			return fmt.aprintf("%s%s", type.value, generate_literal(type.base_type^, pkg, 0))
		case:
			return fmt.aprint(type.value)
		}
	}
	generate_comp_literal :: proc(type: Type, pkg: Package, depth: int = 0) -> string {
		sb := strings.builder_make()
		if base_type := type.base_type; base_type != nil {
			#partial switch base_type.kind {
			case .Array:
				fmt.sbprintf(&sb, "%s", umka_base_type_name(base_type^))
			case .Ident:
				strings.write_string(&sb, base_type.names[0])
			}
			strings.write_string(&sb, " ")
		}
		if type.kind == .Quaternion_Lit {
			strings.write_string(&sb, "[4]real32 ")
		}
		// if type.base_type != nil && type.base_type.kind == .Bit_Set do dd(type)
		strings.write_string(&sb, "{\n")
		enum_name: string
		if type.base_type != nil && type.base_type.names != nil {
			base_type := pkg.types[type.base_type.names[0]]
			if base_type.kind == .Bit_Set {
				enum_name = base_type.base_type.names[0]
			}
		}

		for field, index in type.fields {
			strings.write_string(&sb, strings.repeat("\t", depth + 1))
			if enum_name != "" {
				bitset_enum := pkg.types[enum_name]
				identifier: string
				if field.pkg == "" {
					identifier = fmt.aprintf("%s.%s", enum_name, field.value)
				} else {
					identifier = fmt.aprintf("%s.%s", enum_name, field.names[0])
				}
				fmt.sbprintf(&sb, "1 << (int(%s) - %d)", identifier, bitset_enum.lowest)
				if index < len(type.fields) - 1 {
					fmt.sbprintln(&sb, " |")
				} else {
					fmt.sbprintln(&sb)
				}
			} else {
				#partial switch field.kind {
				case .Quaternion_Lit, .Comp_Lit:
					comp_lit := generate_comp_literal(field, pkg, depth + 1)
					fmt.sbprintfln(&sb, "%s,", comp_lit)
				case .Unary_Expr:
					fmt.sbprintfln(
						&sb,
						"%s%s",
						field.value,
						generate_literal(field.base_type^, pkg, 0),
					)
				case .Ident:
					ident_value: string
					if field.names[0] in pkg.types && field.pkg == "" {
						ident_value = generate_literal(pkg.types[field.names[0]], pkg, depth + 1)
					} else {
						pkg_string: string
						if field.pkg == "" {
							pkg_string = ""
						} else if field.pkg in pkg.types {
							pkg_string = fmt.aprintf("%s.", field.pkg)
						} else {
							pkg_string = fmt.aprintf("%s::", field.pkg)
						}
						ident_value = fmt.aprintf("%s%s", pkg_string, field.names[0])
					}
					fmt.sbprintfln(&sb, "%s,", ident_value)
				case .Implicit_Selector:
					fmt.sbprintfln(&sb, ".%s,", field.value)
				case:
					fmt.sbprintfln(&sb, "%s,", field.value)
				}

			}
		}
		strings.write_string(&sb, strings.repeat("\t", depth))
		strings.write_string(&sb, "}")


		return strings.to_string(sb)
	}

	prev_unresolved_count = 0
	for {
		for literal_name, literal in odin_pkg.types {
			if literal.kind != .Comp_Lit &&
			   literal.kind != .Bool_Lit &&
			   literal.kind != .Basic_Lit &&
			   literal.kind != .Float_Lit &&
			   literal.kind != .String_Lit &&
			   literal.kind != .Integer_Lit &&
			   literal.kind != .Quaternion_Lit {
				continue
			}

			if literal_name in added_types {
				continue
			}

			unresolved_dependency := false
			for dependency in literal.dependencies {
				if dependency not_in added_types && dependency in odin_pkg.types {
					unresolved_dependency = true
					unresolved_types[literal_name] = {}
				}
			}
			if unresolved_dependency == true {
				continue
			} else if literal_name in unresolved_types {
				delete_key(&unresolved_types, literal_name)
			}
			literal_value := generate_literal(literal, odin_pkg)
			fmt.fprintfln(f, "%s := %s", literal_name, literal_value)
			added_types[literal_name] = {}
		}
		unresolved_count := len(unresolved_types)
		if unresolved_count == 0 {
			break
		} else {
			assert(
				prev_unresolved_count != unresolved_count,
				fmt.aprintf("Unresolved types: %#v", unresolved_types),
			)
			prev_unresolved_count = unresolved_count
		}
	}

	for bitset_name, bitset in odin_pkg.types {
		if bitset.kind != .Bit_Set do continue
		param_type: string
		lowest: int
		if bitset.base_type.kind == .Ident {
			enum_type := odin_pkg.types[bitset.base_type.names[0]]
			param_type = bitset.base_type.names[0]
			lowest = enum_type.lowest
		} else {
			param_type = "uint"
			lowest, _ = strconv.parse_int(bitset.base_type.left.value.(string))
		}

		fmt.fprintfln(f, "fn (set: ^%s) add(val: %s) {{", bitset_name, param_type)
		fmt.fprintfln(f, "\tset.bits = set.bits | (1 << (int(val) - %v))", lowest)
		fmt.fprintln(f, "}")
		fmt.fprintln(f)

		fmt.fprintfln(f, "fn (set: ^%s) remove(val: %s) {{", bitset_name, param_type)
		fmt.fprintfln(f, "\tset.bits = set.bits &~ (1 << (int(val) - %v))", lowest)
		fmt.fprintln(f, "}")
		fmt.fprintln(f)

		fmt.fprintfln(f, "fn (set: ^%s) has(val: %s): bool {{", bitset_name, param_type)
		fmt.fprintfln(f, "\treturn (set.bits & (1 << (int(val) - %v))) != 0", lowest)
		fmt.fprintln(f, "}")
		fmt.fprintln(f)
	}

	for proc_name, type in odin_pkg.types {
		if type.kind == .Proc {
			fmt.fprintf(f, `fn %s*(`, proc_name)
			if len(type.params) < 1 {
				fmt.fprint(f, `)`)
			}
			for param, i in type.params {
				param_type := umka_base_type_name(param.base_type^)
				param_name := param.names[0] != "type" ? param.names[0] : "type_"
				if i < len(type.params) - 1 {
					fmt.fprintf(f, `%s: %s, `, param_name, param_type)
				} else {
					fmt.fprintf(f, `%s: %s)`, param_name, param_type)
				}
			}
			if len(type.returns) > 0 {
				return_type :=
					type.returns[0].base_type.names[0] in odin_to_umka ? odin_to_umka[type.returns[0].base_type.names[0]].name : type.returns[0].base_type.names[0]
				fmt.fprintf(f, `: %s`, return_type)
			}
			fmt.fprintfln(f, "")
		}
	}
}


dd :: proc(values: ..any, loc := #caller_location) {
	for value in values {
		fmt.printfln("%#v", value)
	}
	assert(false, loc = loc)
}
