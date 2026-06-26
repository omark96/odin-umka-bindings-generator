package generator

import umkagen "../../umka-bindgen"

main :: proc() {
	rl_package := umkagen.Package {
		parse             = true,
		generate          = true,
		generate_umi      = true,
		input_path        = "../raylib/",
		output_path       = "../bindings/",
		odin_package_name = "raylib_bindings",
		umka_module_name  = "rl.um",
		// umka_modules_to_import = {"`c.um`"},
		ignore_types      = {
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
	}

	umkagen.add_package("rl", rl_package)
	umkagen.add_odin_package_to_import(
		umkagen.Package_Import{name = "raylib", path = "vendor:raylib", alias = "rl"},
		umkagen.Package_Import{name = "c", path = "core:c"},
		umkagen.Package_Import{name = "fmt", path = "core:fmt"},
		umkagen.Package_Import{name = "runtime", path = "base:runtime"},
		umkagen.Package_Import{name = "umka", path = "../../umka"},
	)
	umkagen.generate()
}
