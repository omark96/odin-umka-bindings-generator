package example

import "../umka"
import "base:runtime"
import "core:c"
import "core:c/libc"
import "core:fmt"
import "core:log"
import "core:math"
import "core:time"

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

// Some_Struct2 :: struct {
// 	a, b: int,
// 	d:    c.int,
// 	e:    bool,
// }

// Some_Struct3 :: struct {
// }

// Some_Struct4 :: struct {
// 	a: f32,
// 	b: rune,
// 	c: Some_Struct3,
// 	d: f64,
// }

// Some_Struct5 :: struct {
// 	e: [^]c.int,
// }

Some_Array :: [4]int
// Some_Array2 :: [5]u8
// Some_Slice :: []u8
// Some_Multi_Pointer :: [^]int
// Some_Multi_Pointer2 :: [^]c.int
// Some_Multi_Pointer3 :: [^]Some_Array

// My_Int :: int
// Some_Struct_Alias :: Some_Struct
// My_Distinct_Int :: distinct int
//TODO: Distinct arrays
// My_Distinct_U8_Array :: distinct [4]u8

// TODO: Implement dynamic arrays
// Some_Dynamic_Array :: [dynamic]u8

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

Some_Enum_With_Bitshift :: enum {
	A = 1 << 0,
	B = 1 << 1,
	C = 1 << 2,
	D,
	// E = 1 << 33,
	F,
}

// SHARED :: #config(SHARED, true)
Quaternion_Lit :: quaternion(real = 0.0, imag = 1, jmag = 2, kmag = 3)

Struct_With_Quaternion :: struct {
	quat: quaternion128,
}

CONST_STRUCT_WITH_QUATERNION :: Struct_With_Quaternion{quaternion(w = 4, x = 3, y = 2, z = 1)}

// TODO:
Some_Bit_Set_Exclusive_Range :: bit_set[0 ..< 10]
Some_Bit_Set_Inclusive_Range :: bit_set[0 ..= 5]
Some_Bit_Set_Range_Underlying :: bit_set[0 ..= 5;u16]
Some_Enum_Bit_Set :: bit_set[Some_Enum]
Some_U8_Enum_Bit_Set :: bit_set[Some_U8_Enum;u8]
Some_U8_Enum_Bit_Set_U64_Backing :: bit_set[Some_U8_Enum;u64]
Some_Enum_With_Bitshift_Bit_Set :: bit_set[Some_Enum_With_Bitshift]

Some_Enum_Bit_Set_Lit :: Some_Enum_Bit_Set{Some_Enum.A, .B}

Array_Lit :: [4]u8{255, 255, 255, 255}

PAREN_CONST :: (3 - 1 - 3)
PAREN_NESTED_PAREN_CONST :: ((3 - 1) + (3 - 1))
PAREN_WITH_IDENTIFIER :: (PAREN_CONST - 1)

ARRAY_LEN :: 3

Array_With_Array_Len :: [ARRAY_LEN]int

Struct_A :: struct {
	a: int,
}

Struct_B :: struct {
	b: f32,
}

Struct_C :: struct {
	A: Struct_A,
	B: Struct_B,
	C: [3]f32,
	D: [3]i32,
	E: i32,
}

Struct_D :: struct {
	from_another_package: c.int,
	pi:                   f32,
	enum_value:           Some_Enum,
}

CONST_STRUCT_C :: Struct_C {
	A = {a = -1},
	B = Struct_B{b = 0.1},
	C = {0.1, (0.2 - 0.1), 0.3},
	D = [3]i32{1, 2, 3},
	E = 320,
}

CONST_A :: Struct_A{1}

CONST_STRUCT_C2 :: Struct_C {
	CONST_A,
	{1},
	{0.11111, 0.22222, 0.33333},
	[3]i32{111, 222, 333},
	111111,
}

CONST_STRUCT_D :: Struct_D{1, math.PI, Some_Enum.A}

// Adds two integers
add :: proc(a, b: int) -> int {
	return a + b
}

some_func :: proc(a: int) -> Some_Struct {
	return Some_Struct{1, true}
}

some_func2 :: proc(a: int) {
}

some_func_without_args :: proc() {

}

print_cstring :: proc(s: cstring) {
	fmt.println(s)
}

print_string :: proc(s: string) {
	fmt.println(s)
}

print_some_struct :: proc(s: Some_Struct) {
	fmt.printfln("%#v", s)
}

print_some_enum_value :: proc(v: Some_Enum) {
	fmt.printfln("%d", v)
}

print_some_array :: proc(a: Some_Array) {
	fmt.printfln("%#v", a)
}

g_umka_ctx: ^umka.Umka

main :: proc() {
	my_bit_set := Some_U8_Enum_Bit_Set{.A, .B}

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
	umka_add_bindings(g_umka_ctx)

	fmt.println("Compiling")
	rv := umka.Compile(g_umka_ctx)

	umka_assert(rv)

	umka.Run(g_umka_ctx)

}
