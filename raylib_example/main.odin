package raylib_example

import "../umka"
import "base:runtime"
import "core:log"

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
	umka_add_bindings(&g_umka_ctx)

	fmt.println("Compiling")
	rv := umka.Compile(g_umka_ctx)

	umka_assert(rv)

	umka.Run(g_umka_ctx)
}
