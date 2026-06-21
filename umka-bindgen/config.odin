#+feature dynamic-literals
package umkagen

Bindings_Config :: struct {}

only_marked_fns := false

Package_Import :: struct {
	name:  string,
	path:  string,
	alias: string,
}

packages_to_import := []Package_Import {
	{name = "raylib", path = "vendor:raylib", alias = "rl"},
	{name = "c", path = "core:c"},
	{name = "fmt", path = "core:fmt"},
	{name = "runtime", path = "base:runtime"},
	{name = "umka", path = "../../umka"},
}

odin_to_umka := map[string]Umka_Builtin_Type {
	"i8" = Umka_Builtin_Type{name = "int8", stack_slot = .intVal},
	"i16" = Umka_Builtin_Type{name = "int16", stack_slot = .intVal},
	"i32" = Umka_Builtin_Type{name = "int32", stack_slot = .intVal},
	"i64" = Umka_Builtin_Type{name = "int", stack_slot = .intVal},
	"int" = Umka_Builtin_Type{name = "int", stack_slot = .intVal},
	"u8" = Umka_Builtin_Type{name = "uint8", stack_slot = .intVal},
	"byte" = Umka_Builtin_Type{name = "uint8", stack_slot = .intVal},
	"u16" = Umka_Builtin_Type{name = "uint16", stack_slot = .intVal},
	"u32" = Umka_Builtin_Type{name = "uint32", stack_slot = .intVal},
	"u64" = Umka_Builtin_Type{name = "uint", stack_slot = .intVal},
	"uint" = Umka_Builtin_Type{name = "uint", stack_slot = .intVal},
	"f32" = Umka_Builtin_Type{name = "real32", stack_slot = .realVal},
	"f64" = Umka_Builtin_Type{name = "real", stack_slot = .realVal},
	"bool" = Umka_Builtin_Type{name = "bool", stack_slot = .intVal},
	"rawptr" = Umka_Builtin_Type{name = "^void", stack_slot = .ptrVal},
	"rune" = Umka_Builtin_Type{name = "uint32", stack_slot = .intVal},
	"cstring" = Umka_Builtin_Type{name = "str", stack_slot = .ptrVal},
	"string" = Umka_Builtin_Type{name = "str", stack_slot = .ptrVal},
	"quaternion128" = Umka_Builtin_Type{name = "[4]real32", stack_slot = .ptrVal},
	"c.int" = Umka_Builtin_Type{name = "int32", stack_slot = .ptrVal},
	"c.uint" = Umka_Builtin_Type{name = "uint32", stack_slot = .ptrVal},
	// "any" = Umka_Builtin_Type{name = "any", stack_slot = .ptrVal},
}

packages := map[string]Package {
	"builtin" = Package {
		types = {
			"int" = Type{kind = .Builtin, names = {"int"}},
			"bool" = Type{kind = .Builtin, names = {"bool"}},
			"byte" = Type{kind = .Builtin, names = {"byte"}},
			"cstring" = Type{kind = .Builtin, names = {"cstring"}},
			"cstring16" = Type{kind = .Builtin, names = {"cstring16"}},
			"f32" = Type{kind = .Builtin, names = {"f32"}},
			"f64" = Type{kind = .Builtin, names = {"f64"}},
			"i16" = Type{kind = .Builtin, names = {"i16"}},
			"i32" = Type{kind = .Builtin, names = {"i32"}},
			"i64" = Type{kind = .Builtin, names = {"i64"}},
			"i8" = Type{kind = .Builtin, names = {"i8"}},
			"int" = Type{kind = .Builtin, names = {"int"}},
			"rawptr" = Type{kind = .Builtin, names = {"rawptr"}},
			"rune" = Type{kind = .Builtin, names = {"rune"}},
			"string" = Type{kind = .Builtin, names = {"string"}},
			"string16" = Type{kind = .Builtin, names = {"string16"}},
			"u16" = Type{kind = .Builtin, names = {"u16"}},
			"u32" = Type{kind = .Builtin, names = {"u32"}},
			"u64" = Type{kind = .Builtin, names = {"u64"}},
			"u8" = Type{kind = .Builtin, names = {"u8"}},
			"uint" = Type{kind = .Builtin, names = {"uint"}},
			"uintptr" = Type{kind = .Builtin, names = {"uintptr"}},
			"quaternion128" = Type{kind = .Builtin, names = {"quaternion128"}},
			// "any" = Type{kind = .Builtin, names = {"any"}},
		},
	},
	// "odin" = Package{types = {"quaternion128" = Type{kind = .Ident, names = {"quaternion128"}}}},
	"c" = Package {
		types = {
			"int" = Type{kind = .Ident, names = {"int"}},
			"uint" = Type{kind = .Ident, names = {"uint"}},
		},
	},
	"rl" = Package {
		parse = true,
		generate = true,
		input_path = "./raylib",
		output_path = "./raylib/bindings",
		odin_package_name = "raylib_bindings",
		umka_module_name = "rl.um",
		umka_modules_to_import = {"c.um"},
		ignore_types = {
			"_",
			"VrStereoConfig",
			"UnloadVrStereoConfig",
			"EndVrStereoMode",
			"BeginVrStereoMode",
			"LoadVrStereoConfig",
			"MemAllocatorProc",
			"MemAllocator",
			"MemFreeCstring",
			"MemFreePtr",
			"TextFormatAlloc",
			"ColorFromHSV",
			"TextFormat",
			"TraceLog",
			"SetTraceLogCallback",
			"SetLoadFileDataCallback",
			"SetSaveFileDataCallback",
			"SetLoadFileTextCallback",
			"SetSaveFileTextCallback",
			"AttachAudioMixedProcessor",
			"DetachAudioStreamProcessor",
			"SetAudioStreamCallback",
			"DetachAudioMixedProcessor",
			"AttachAudioStreamProcessor",
		},
	},
}
define_value :: union {
	i32,
	int,
	f32,
	f64,
	string,
	bool,
}
define_overrides := map[string]define_value {
	"RAYLIB_MAX_TEXTFORMAT_BUFFERS" = int(4),
}

keywords := []string{"true", "false"}

add_extras :: proc() {
	if builtins, ok := packages["builtins"]; ok {
		builtins.types["quarternion128"] = Type {
			kind      = .Array,
			base_type = new_clone(builtins.types["f32"]),
			length    = 4,
		}
	}
}
