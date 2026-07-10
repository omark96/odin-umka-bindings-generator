package generator

import umkagen "../../umka-bindgen"

main :: proc() {
	example_package := umkagen.Package {
		parse             = true,
		generate          = true,
		input_path        = "../",
		output_path       = "../",
		odin_package_name = "example",
		odin_file_name    = "bindings.odin",
		umka_module_name  = "bindings.um",
		ignore_types      = {
			"warn_callback",
			"umka_assert",
			"main",
			"Some_Struct",
			"Some_Array",
			"Some_U8_Enum",
			"Some_U8_Enum_Bit_Set",
			"add",
			"some_func",
			"some_func2",
			"some_func_without_args",
			"print_cstring",
			"print_string",
			"print_some_struct",
			"print_some_enum_value",
			"print_some_array",
		},
		// umka_modules_to_import = {"`c.um`"},
	}

	umkagen.add_package("example", example_package)
	umkagen.add_odin_package_to_import(
		umkagen.Package_Import{name = "c", path = "core:c"},
		umkagen.Package_Import{name = "fmt", path = "core:fmt"},
		umkagen.Package_Import{name = "runtime", path = "base:runtime"},
		umkagen.Package_Import{name = "umka", path = "../umka"},
	)
	umkagen.generate()
}
