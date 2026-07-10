package generator

import umkagen "../../umka-bindgen"
import "core:fmt"
import "core:mem"

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
				fmt.eprintfln("Leaked a total of: %M", sum)
				fmt.eprintfln("Size of struct: %d", size_of(umkagen.Type))
			}
			mem.tracking_allocator_destroy(&track)
		}
	}
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
