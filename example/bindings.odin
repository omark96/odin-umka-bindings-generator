//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package example

import "../umka"
import "base:runtime"
import "core:fmt"

umka_print_some_struct :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	s := cast(^Some_Struct)umka.GetParam(params, 0)
	print_some_struct(s^) 
}
				
umka_some_func_without_args :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	some_func_without_args()
}
				
umka_print_string :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	c_s := cast(^cstring)umka.GetParam(params, 0)
	s := string(c_s^)
	print_string(s) 
}
				
umka_print_cstring :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	s := cast(^cstring)umka.GetParam(params, 0)
	print_cstring(s^) 
}
				
umka_print_some_enum_value :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	v := cast(^Some_Enum)umka.GetParam(params, 0)
	print_some_enum_value(v^) 
}
				
umka_print_some_array :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	a := cast(^Some_Array)umka.GetParam(params, 0)
	print_some_array(a^) 
}
				
umka_add :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	a := cast(^int)umka.GetParam(params, 0)
	b := cast(^int)umka.GetParam(params, 1)
	res := add(a^, b^) 
	result.intVal = cast(i64)res
}
				
umka_some_func :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	a := cast(^int)umka.GetParam(params, 0)
	res := some_func(a^) 
	result.ptrVal = cast(rawptr)&res
}
				
umka_some_func2 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	a := cast(^int)umka.GetParam(params, 0)
	some_func2(a^) 
}
				
umka_add_bindings :: proc(ctx: ^umka.Context) {
	fmt.println("Adding print_some_struct")
	umka.AddFunc(ctx^, "print_some_struct", umka_print_some_struct)
	fmt.println("Adding some_func_without_args")
	umka.AddFunc(ctx^, "some_func_without_args", umka_some_func_without_args)
	fmt.println("Adding print_string")
	umka.AddFunc(ctx^, "print_string", umka_print_string)
	fmt.println("Adding print_cstring")
	umka.AddFunc(ctx^, "print_cstring", umka_print_cstring)
	fmt.println("Adding print_some_enum_value")
	umka.AddFunc(ctx^, "print_some_enum_value", umka_print_some_enum_value)
	fmt.println("Adding print_some_array")
	umka.AddFunc(ctx^, "print_some_array", umka_print_some_array)
	fmt.println("Adding add")
	umka.AddFunc(ctx^, "add", umka_add)
	fmt.println("Adding some_func")
	umka.AddFunc(ctx^, "some_func", umka_some_func)
	fmt.println("Adding some_func2")
	umka.AddFunc(ctx^, "some_func2", umka_some_func2)
	rv := umka.AddModule(
		ctx^,
		"bindings.um",
		`
		type (
			Some_Struct3* = struct {
			}
			quaternion128* = [4]real32
			Some_Array* = [4]int
			Some_Array2* = [5]uint8
			Some_U8_Enum* = enum (uint8) {
				A
				B
				C
				D
			}
			Some_Enum* = enum {
				A = 1
				B
				C = 5
				D
			}
			My_Distinct_U8_Array* = 
			My_Distinct_Int* = 
			My_Int* = int
