package example

import "../umka"
import "base:runtime"
import "core:c"
import "core:c/libc"
import "core:fmt"
import "core:log"

// SOME_CONSTANT :: 'a' // TODO: Constants
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


Some_Struct :: struct {
	a: int,
	b: bool,
}

Some_Struct2 :: struct {
	a, b: int,
	d:    c.int,
	e:    bool,
}

Some_Struct3 :: struct {
}

Some_Struct4 :: struct {
	a: f32,
	b: rune,
	c: Some_Struct3, //TODO: Resolve order for type dependency
	d: f64,
}

Some_Struct5 :: struct {
	a: [4]u8,
	b: [^]int,
	d: []c.int,
	e: [^]c.int,
}

Some_Array :: [4]int
Some_Array2 :: [5]u8
Some_Slice :: []u8

My_Int :: int
Some_Struct_Alias :: Some_Struct
My_Distinct_Int :: distinct int

Some_Dynamic_Array :: [dynamic]u8

Some_Enum :: enum {
	A = 1,
	B,
	C = 5,
	D,
}

Some_U8_Enum :: enum u8 {
	A,
	B,
	C,
	D,
}

// Adds two integers
@(umka_fn)
add :: proc(a, b: int) -> int {
	return a + b
}

@(umka_fn)
some_func :: proc(a: int) -> Some_Struct {
	return Some_Struct{1, true}
}

@(umka_fn)
some_func2 :: proc(a: int) {
}

@(umka_fn)
some_func_without_args :: proc() {

}

@(umka_fn)
print_cstring :: proc(s: cstring) {
	fmt.println(s)
}

@(umka_fn)
print_string :: proc(s: string) {
	fmt.println(s)
}

@(umka_fn)
print_some_struct :: proc(s: Some_Struct) {
	fmt.printfln("%#v", s)
}

@(umka_fn)
print_some_enum_value :: proc(v: Some_Enum) {
	fmt.printfln("%d", v)
}
@(umka_fn)
print_some_array :: proc(a: Some_Array) {
	fmt.printfln("%#v", a)
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
