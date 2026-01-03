package example

import "../raylib/bindings"
import "../umka"
import "base:runtime"
import "core:fmt"
import "core:log"
import "vendor:raylib"

warn_callback: umka.WarningCallback : proc "c" (err: ^umka.Error) {
	context = runtime.default_context()
	context.logger = log.create_console_logger()
	log.warnf(
		"(%v) \"%s\" from %s, in %s at %v:%v\n",
		err.code,
		err.msg,
		err.fileName,
		err.fnName,
		err.line,
		err.pos,
	)
}

umka_assert :: proc(rv: bool) {
	if !rv {
		err := umka.GetError(g_umka_ctx)
		log.panicf(
			"(%v) \"%s\" from %s, in %s at %v:%v\n",
			err.code,
			err.msg,
			err.fileName,
			err.fnName,
			err.line,
			err.code,
		)
	}
}

g_umka_ctx: umka.Context


main :: proc() {
	context.logger = log.create_console_logger()

	fmt.println("Alloc")
	g_umka_ctx = umka.Alloc()
	assert(g_umka_ctx != nil)
	defer umka.Free(g_umka_ctx)

	fmt.println("Init")
	umka_assert(
		umka.Init(
			g_umka_ctx,
			"example.um",
			nil,
			1024 * 1024,
			nil,
			0,
			nil,
			false,
			false,
			warn_callback,
		),
	)


	fmt.println("Adding bindings")
	bindings.umka_add_bindings(&g_umka_ctx)

	fmt.println("Compiling")
	rv := umka.Compile(g_umka_ctx)

	umka_assert(rv)
	raylib.SetTargetFPS(60)
	raylib.InitWindow(800, 600, "_glfw Umka + Raylib example")
	for !raylib.WindowShouldClose() {
		umka.Run(g_umka_ctx)
	}
}
