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
		ignore_types      = {"warn_callback", "umka_assert", "main"},
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
