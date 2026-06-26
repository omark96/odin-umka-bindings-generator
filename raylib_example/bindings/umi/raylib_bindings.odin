//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package raylib_bindings

import rl "vendor:raylib"
import "core:c"
import "core:fmt"
import "base:runtime"
import "../../../umka"
@(export = true)
um_TextToLower :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToLower(text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_TextToSnake :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToSnake(text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCameraRight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	res := rl.GetCameraRight(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ExportWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportWave(wave^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UnloadTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	rl.UnloadTexture(texture^) 
}
				
@(export = true)
um_UnloadWaveSamples :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	samples := cast(^[^]f32)api.umkaGetParam(params, 0)
	rl.UnloadWaveSamples(samples^) 
}
				
@(export = true)
um_MemRealloc :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ptr := cast(^rawptr)api.umkaGetParam(params, 0)
	size := cast(^c.uint)api.umkaGetParam(params, 1)
	res := rl.MemRealloc(ptr^, size^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawBillboardRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 0)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 1)
	source := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 3)
	size := cast(^rl.Vector2)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawBillboardRec(camera^, texture^, source^, position^, size^, tint^) 
}
				
@(export = true)
um_DrawModelWiresEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	rotationAngle := cast(^f32)api.umkaGetParam(params, 3)
	scale := cast(^rl.Vector3)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawModelWiresEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
@(export = true)
um_UpdateCameraPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	movement := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	rotation := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	zoom := cast(^f32)api.umkaGetParam(params, 3)
	rl.UpdateCameraPro(camera^, movement^, rotation^, zoom^) 
}
				
@(export = true)
um_SetAudioStreamPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	pitch := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetAudioStreamPitch(stream^, pitch^) 
}
				
@(export = true)
um_GetScreenToWorldRay :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 1)
	res := rl.GetScreenToWorldRay(position^, camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenImagePerlinNoise :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	offsetX := cast(^c.int)api.umkaGetParam(params, 2)
	offsetY := cast(^c.int)api.umkaGetParam(params, 3)
	scale := cast(^f32)api.umkaGetParam(params, 4)
	res := rl.GenImagePerlinNoise(width^, height^, offsetX^, offsetY^, scale^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawBillboard :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 0)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 1)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	scale := cast(^f32)api.umkaGetParam(params, 3)
	tint := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawBillboard(camera^, texture^, position^, scale^, tint^) 
}
				
@(export = true)
um_PlayAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	rl.PlayAudioStream(stream^) 
}
				
@(export = true)
um_CheckCollisionCircles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius1 := cast(^f32)api.umkaGetParam(params, 1)
	center2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	radius2 := cast(^f32)api.umkaGetParam(params, 3)
	res := rl.CheckCollisionCircles(center1^, radius1^, center2^, radius2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetMouseCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	cursor := cast(^rl.MouseCursor)api.umkaGetParam(params, 0)
	rl.SetMouseCursor(cursor^) 
}
				
@(export = true)
um_ResumeAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	rl.ResumeAudioStream(stream^) 
}
				
@(export = true)
um_TextToUpper :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToUpper(text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawCircleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawCircleV(center^, radius^, color^) 
}
				
@(export = true)
um_EncodeDataBase64 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	outputSize := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.EncodeDataBase64(data^, dataSize^, outputSize^) 
}
				
@(export = true)
um_DrawCylinderEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	startRadius := cast(^f32)api.umkaGetParam(params, 2)
	endRadius := cast(^f32)api.umkaGetParam(params, 3)
	sides := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCylinderEx(startPos^, endPos^, startRadius^, endRadius^, sides^, color^) 
}
				
@(export = true)
um_GetGestureDetected :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGestureDetected()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionCircleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	res := rl.CheckCollisionCircleRec(center^, radius^, rec^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_IsGamepadAvailable :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	res := rl.IsGamepadAvailable(gamepad^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_LoadDirectoryFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dirPath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadDirectoryFiles(dirPath^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsFileExtension :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	ext := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.IsFileExtension(fileName^, ext^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_IsTextureValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	res := rl.IsTextureValid(texture^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawCapsule :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	slices := cast(^c.int)api.umkaGetParam(params, 3)
	rings := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCapsule(startPos^, endPos^, radius^, slices^, rings^, color^) 
}
				
@(export = true)
um_TextToFloat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToFloat(text^ )
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_IsGamepadButtonDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	button := cast(^rl.GamepadButton)api.umkaGetParam(params, 1)
	res := rl.IsGamepadButtonDown(gamepad^, button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawPixel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	posX := cast(^c.int)api.umkaGetParam(params, 1)
	posY := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawPixel(dst^, posX^, posY^, color^) 
}
				
@(export = true)
um_LoadSoundAlias :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	source := cast(^rl.Sound)api.umkaGetParam(params, 0)
	res := rl.LoadSoundAlias(source^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_PauseSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.PauseSound(sound^) 
}
				
@(export = true)
um_PauseMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.PauseMusicStream(music^) 
}
				
@(export = true)
um_BeginTextureMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	target := cast(^rl.RenderTexture2D)api.umkaGetParam(params, 0)
	rl.BeginTextureMode(target^) 
}
				
@(export = true)
um_DrawTextCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 1)
	codepointCount := cast(^c.int)api.umkaGetParam(params, 2)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	fontSize := cast(^f32)api.umkaGetParam(params, 4)
	spacing := cast(^f32)api.umkaGetParam(params, 5)
	tint := cast(^rl.Color)api.umkaGetParam(params, 6)
	rl.DrawTextCodepoints(font^, codepoints^, codepointCount^, position^, fontSize^, spacing^, tint^) 
}
				
@(export = true)
um_GetColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	hexValue := cast(^c.uint)api.umkaGetParam(params, 0)
	res := rl.GetColor(hexValue^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_TextAppend :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^[^]byte)api.umkaGetParam(params, 0)
	append := cast(^cstring)api.umkaGetParam(params, 1)
	position := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.TextAppend(text^, append^, position^) 
}
				
@(export = true)
um_SetMasterVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	volume := cast(^f32)api.umkaGetParam(params, 0)
	rl.SetMasterVolume(volume^) 
}
				
@(export = true)
um_UnloadFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^[^]byte)api.umkaGetParam(params, 0)
	rl.UnloadFileData(data^) 
}
				
@(export = true)
um_EnableCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EnableCursor()
}
				
@(export = true)
um_DrawCircle3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	rotationAngle := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawCircle3D(center^, radius^, rotationAxis^, rotationAngle^, color^) 
}
				
@(export = true)
um_DrawSplineSegmentLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineSegmentLinear(p1^, p2^, thick^, color^) 
}
				
@(export = true)
um_GenMeshKnot :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	size := cast(^f32)api.umkaGetParam(params, 1)
	radSeg := cast(^c.int)api.umkaGetParam(params, 2)
	sides := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.GenMeshKnot(radius^, size^, radSeg^, sides^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageAlphaClear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	threshold := cast(^f32)api.umkaGetParam(params, 2)
	rl.ImageAlphaClear(image^, color^, threshold^) 
}
				
@(export = true)
um_UnloadMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	rl.UnloadMesh(mesh^) 
}
				
@(export = true)
um_GetClipboardImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetClipboardImage()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageColorInvert :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageColorInvert(image^) 
}
				
@(export = true)
um_ColorContrast :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	contrast := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.ColorContrast(color^, contrast^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsAudioDeviceReady :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsAudioDeviceReady()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GenMeshCone :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	height := cast(^f32)api.umkaGetParam(params, 1)
	slices := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GenMeshCone(radius^, height^, slices^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	scale := cast(^f32)api.umkaGetParam(params, 2)
	tint := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawModel(model^, position^, scale^, tint^) 
}
				
@(export = true)
um_EnableEventWaiting :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EnableEventWaiting()
}
				
@(export = true)
um_ImageDrawLineEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	start := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	end := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	thick := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDrawLineEx(dst^, start^, end^, thick^, color^) 
}
				
@(export = true)
um_SaveFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	data := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.SaveFileData(fileName^, data^, dataSize^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_CameraMoveUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	distance := cast(^f32)api.umkaGetParam(params, 1)
	rl.CameraMoveUp(camera^, distance^) 
}
				
@(export = true)
um_DrawSplineSegmentCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	thick := cast(^f32)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawSplineSegmentCatmullRom(p1^, p2^, p3^, p4^, thick^, color^) 
}
				
@(export = true)
um_DrawTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	v1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	v2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	v3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawTriangle(v1^, v2^, v3^, color^) 
}
				
@(export = true)
um_GetGlyphAtlasRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	codepoint := cast(^rune)api.umkaGetParam(params, 1)
	res := rl.GetGlyphAtlasRec(font^, codepoint^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionPointCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	point := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.CheckCollisionPointCircle(point^, center^, radius^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_EndDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndDrawing()
}
				
@(export = true)
um_MaximizeWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.MaximizeWindow()
}
				
@(export = true)
um_SetShaderValue :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	locIndex := cast(^c.int)api.umkaGetParam(params, 1)
	value := cast(^rawptr)api.umkaGetParam(params, 2)
	uniformType := cast(^rl.ShaderUniformDataType)api.umkaGetParam(params, 3)
	rl.SetShaderValue(shader^, locIndex^, value^, uniformType^) 
}
				
@(export = true)
um_IsGamepadButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	button := cast(^rl.GamepadButton)api.umkaGetParam(params, 1)
	res := rl.IsGamepadButtonPressed(gamepad^, button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ClearWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	flags := cast(^rl.ConfigFlags)api.umkaGetParam(params, 0)
	rl.ClearWindowState(flags^) 
}
				
@(export = true)
um_DrawCircleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerX := cast(^c.int)api.umkaGetParam(params, 0)
	centerY := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawCircleLines(centerX^, centerY^, radius^, color^) 
}
				
@(export = true)
um_ImageFormat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	newFormat := cast(^rl.PixelFormat)api.umkaGetParam(params, 1)
	rl.ImageFormat(image^, newFormat^) 
}
				
@(export = true)
um_OpenURL :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	url := cast(^cstring)api.umkaGetParam(params, 0)
	rl.OpenURL(url^) 
}
				
@(export = true)
um_GenImageFontAtlas :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	glyphs := cast(^[^]rl.GlyphInfo)api.umkaGetParam(params, 0)
	glyphRecs := cast(^^[^]rl.Rectangle)api.umkaGetParam(params, 1)
	codepointCount := cast(^c.int)api.umkaGetParam(params, 2)
	fontSize := cast(^c.int)api.umkaGetParam(params, 3)
	padding := cast(^c.int)api.umkaGetParam(params, 4)
	packMethod := cast(^c.int)api.umkaGetParam(params, 5)
	res := rl.GenImageFontAtlas(glyphs^, glyphRecs^, codepointCount^, fontSize^, padding^, packMethod^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetClipboardText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetClipboardText()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetRandomValue :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	min := cast(^c.int)api.umkaGetParam(params, 0)
	max := cast(^c.int)api.umkaGetParam(params, 1)
	rl.GetRandomValue(min^, max^) 
}
				
@(export = true)
um_GetFileName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	filePath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.GetFileName(filePath^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageFromChannel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	selectedChannel := cast(^c.int)api.umkaGetParam(params, 1)
	res := rl.ImageFromChannel(image^, selectedChannel^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetGestureDragAngle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGestureDragAngle()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_DrawPolyLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	sides := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	rotation := cast(^f32)api.umkaGetParam(params, 3)
	lineThick := cast(^f32)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawPolyLinesEx(center^, sides^, radius^, rotation^, lineThick^, color^) 
}
				
@(export = true)
um_DrawPixelV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.DrawPixelV(position^, color^) 
}
				
@(export = true)
um_IsKeyPressedRepeat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	res := rl.IsKeyPressedRepeat(key^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UnloadUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^[^]byte)api.umkaGetParam(params, 0)
	rl.UnloadUTF8(text^) 
}
				
@(export = true)
um_UnloadImagePalette :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	colors := cast(^[^]rl.Color)api.umkaGetParam(params, 0)
	rl.UnloadImagePalette(colors^) 
}
				
@(export = true)
um_UpdateAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	data := cast(^rawptr)api.umkaGetParam(params, 1)
	frameCount := cast(^c.int)api.umkaGetParam(params, 2)
	rl.UpdateAudioStream(stream^, data^, frameCount^) 
}
				
@(export = true)
um_IsKeyUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	res := rl.IsKeyUp(key^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GenMeshTangents :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^^rl.Mesh)api.umkaGetParam(params, 0)
	rl.GenMeshTangents(mesh^) 
}
				
@(export = true)
um_UnloadFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^[^]byte)api.umkaGetParam(params, 0)
	rl.UnloadFileText(text^) 
}
				
@(export = true)
um_SetMouseScale :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	scaleX := cast(^f32)api.umkaGetParam(params, 0)
	scaleY := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetMouseScale(scaleX^, scaleY^) 
}
				
@(export = true)
um_ImageDrawRectangleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.ImageDrawRectangleRec(dst^, rec^, color^) 
}
				
@(export = true)
um_UnloadImageColors :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	colors := cast(^[^]rl.Color)api.umkaGetParam(params, 0)
	rl.UnloadImageColors(colors^) 
}
				
@(export = true)
um_DirectoryExists :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dirPath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.DirectoryExists(dirPath^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DecodeDataBase64 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	outputSize := cast(^^c.int)api.umkaGetParam(params, 1)
	rl.DecodeDataBase64(data^, outputSize^) 
}
				
@(export = true)
um_DrawTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	text := cast(^cstring)api.umkaGetParam(params, 1)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	fontSize := cast(^f32)api.umkaGetParam(params, 3)
	spacing := cast(^f32)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawTextEx(font^, text^, position^, fontSize^, spacing^, tint^) 
}
				
@(export = true)
um_DrawEllipseLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerX := cast(^c.int)api.umkaGetParam(params, 0)
	centerY := cast(^c.int)api.umkaGetParam(params, 1)
	radiusH := cast(^f32)api.umkaGetParam(params, 2)
	radiusV := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawEllipseLines(centerX^, centerY^, radiusH^, radiusV^, color^) 
}
				
@(export = true)
um_GetGestureHoldDuration :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGestureHoldDuration()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_GetWindowScaleDPI :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetWindowScaleDPI()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionBoxes :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	box1 := cast(^rl.BoundingBox)api.umkaGetParam(params, 0)
	box2 := cast(^rl.BoundingBox)api.umkaGetParam(params, 1)
	res := rl.CheckCollisionBoxes(box1^, box2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_PlayMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.PlayMusicStream(music^) 
}
				
@(export = true)
um_GetTouchPointCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetTouchPointCount()
}
				
@(export = true)
um_ColorToHSV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	res := rl.ColorToHSV(color^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadWaveFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileType := cast(^cstring)api.umkaGetParam(params, 0)
	fileData := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.LoadWaveFromMemory(fileType^, fileData^, dataSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionBoxSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	box := cast(^rl.BoundingBox)api.umkaGetParam(params, 0)
	center := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.CheckCollisionBoxSphere(box^, center^, radius^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetSoundVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	volume := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetSoundVolume(sound^, volume^) 
}
				
@(export = true)
um_IsGamepadButtonReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	button := cast(^rl.GamepadButton)api.umkaGetParam(params, 1)
	res := rl.IsGamepadButtonReleased(gamepad^, button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetGesturesEnabled :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	flags := cast(^rl.Gestures)api.umkaGetParam(params, 0)
	rl.SetGesturesEnabled(flags^) 
}
				
@(export = true)
um_StopAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	rl.StopAudioStream(stream^) 
}
				
@(export = true)
um_ImageResizeNN :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	newWidth := cast(^c.int)api.umkaGetParam(params, 1)
	newHeight := cast(^c.int)api.umkaGetParam(params, 2)
	rl.ImageResizeNN(image^, newWidth^, newHeight^) 
}
				
@(export = true)
um_Fade :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	alpha := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.Fade(color^, alpha^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetTextLineSpacing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	spacing := cast(^c.int)api.umkaGetParam(params, 0)
	rl.SetTextLineSpacing(spacing^) 
}
				
@(export = true)
um_BeginBlendMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mode := cast(^rl.BlendMode)api.umkaGetParam(params, 0)
	rl.BeginBlendMode(mode^) 
}
				
@(export = true)
um_GetGamepadAxisMovement :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	axis := cast(^rl.GamepadAxis)api.umkaGetParam(params, 1)
	res := rl.GetGamepadAxisMovement(gamepad^, axis^ )
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_DrawPlane :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	size := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawPlane(centerPos^, size^, color^) 
}
				
@(export = true)
um_GetRayCollisionBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	box := cast(^rl.BoundingBox)api.umkaGetParam(params, 1)
	res := rl.GetRayCollisionBox(ray^, box^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenImageColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	res := rl.GenImageColor(width^, height^, color^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetRayCollisionTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	p1 := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	p2 := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	p3 := cast(^rl.Vector3)api.umkaGetParam(params, 3)
	res := rl.GetRayCollisionTriangle(ray^, p1^, p2^, p3^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawRectangle(posX^, posY^, width^, height^, color^) 
}
				
@(export = true)
um_ImageDrawRectangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	thick := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawRectangleLines(dst^, rec^, thick^, color^) 
}
				
@(export = true)
um_ComputeCRC32 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ComputeCRC32(data^, dataSize^) 
}
				
@(export = true)
um_DrawLineV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawLineV(startPos^, endPos^, color^) 
}
				
@(export = true)
um_ColorTint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	tint := cast(^rl.Color)api.umkaGetParam(params, 1)
	res := rl.ColorTint(color^, tint^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_MeasureTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	text := cast(^cstring)api.umkaGetParam(params, 1)
	fontSize := cast(^f32)api.umkaGetParam(params, 2)
	spacing := cast(^f32)api.umkaGetParam(params, 3)
	res := rl.MeasureTextEx(font^, text^, fontSize^, spacing^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionPointPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	point := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 1)
	pointCount := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.CheckCollisionPointPoly(point^, points^, pointCount^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_BeginDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.BeginDrawing()
}
				
@(export = true)
um_ComputeSHA1 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ComputeSHA1(data^, dataSize^) 
}
				
@(export = true)
um_TextSubtext :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	position := cast(^c.int)api.umkaGetParam(params, 1)
	length := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.TextSubtext(text^, position^, length^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadFont :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadFont(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetRayCollisionQuad :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	p1 := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	p2 := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	p3 := cast(^rl.Vector3)api.umkaGetParam(params, 3)
	p4 := cast(^rl.Vector3)api.umkaGetParam(params, 4)
	res := rl.GetRayCollisionQuad(ray^, p1^, p2^, p3^, p4^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCameraMatrix2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera2D)api.umkaGetParam(params, 0)
	res := rl.GetCameraMatrix2D(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UpdateTextureRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	pixels := cast(^rawptr)api.umkaGetParam(params, 2)
	rl.UpdateTextureRec(texture^, rec^, pixels^) 
}
				
@(export = true)
um_TextReplace :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^[^]byte)api.umkaGetParam(params, 0)
	replace := cast(^cstring)api.umkaGetParam(params, 1)
	by := cast(^cstring)api.umkaGetParam(params, 2)
	rl.TextReplace(text^, replace^, by^) 
}
				
@(export = true)
um_GenImageWhiteNoise :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	factor := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.GenImageWhiteNoise(width^, height^, factor^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UpdateCamera :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	mode := cast(^rl.CameraMode)api.umkaGetParam(params, 1)
	rl.UpdateCamera(camera^, mode^) 
}
				
@(export = true)
um_UpdateSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	data := cast(^rawptr)api.umkaGetParam(params, 1)
	frameCount := cast(^c.int)api.umkaGetParam(params, 2)
	rl.UpdateSound(sound^, data^, frameCount^) 
}
				
@(export = true)
um_GetDirectoryPath :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	filePath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.GetDirectoryPath(filePath^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetMonitorCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetMonitorCount()
}
				
@(export = true)
um_StopMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.StopMusicStream(music^) 
}
				
@(export = true)
um_ShowCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.ShowCursor()
}
				
@(export = true)
um_LoadUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 0)
	length := cast(^c.int)api.umkaGetParam(params, 1)
	rl.LoadUTF8(codepoints^, length^) 
}
				
@(export = true)
um_GetMasterVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetMasterVolume()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_IsKeyPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	res := rl.IsKeyPressed(key^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_BeginMode2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera2D)api.umkaGetParam(params, 0)
	rl.BeginMode2D(camera^) 
}
				
@(export = true)
um_TextToInteger :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	rl.TextToInteger(text^) 
}
				
@(export = true)
um_LoadModelAnimations :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	animCount := cast(^^c.int)api.umkaGetParam(params, 1)
	rl.LoadModelAnimations(fileName^, animCount^) 
}
				
@(export = true)
um_IsMusicValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	res := rl.IsMusicValid(music^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_BeginShaderMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	rl.BeginShaderMode(shader^) 
}
				
@(export = true)
um_LoadWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadWave(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadShader :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	vsFileName := cast(^cstring)api.umkaGetParam(params, 0)
	fsFileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.LoadShader(vsFileName^, fsFileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsMusicStreamPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	res := rl.IsMusicStreamPlaying(music^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_StopSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.StopSound(sound^) 
}
				
@(export = true)
um_GetCameraForward :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	res := rl.GetCameraForward(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetSplinePointBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	t := cast(^f32)api.umkaGetParam(params, 4)
	res := rl.GetSplinePointBasis(p1^, p2^, p3^, p4^, t^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ResumeMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.ResumeMusicStream(music^) 
}
				
@(export = true)
um_DrawLineBezier :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawLineBezier(startPos^, endPos^, thick^, color^) 
}
				
@(export = true)
um_DisableEventWaiting :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.DisableEventWaiting()
}
				
@(export = true)
um_ImageDraw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	src := cast(^rl.Image)api.umkaGetParam(params, 1)
	srcRec := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	dstRec := cast(^rl.Rectangle)api.umkaGetParam(params, 3)
	tint := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDraw(dst^, src^, srcRec^, dstRec^, tint^) 
}
				
@(export = true)
um_WindowShouldClose :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.WindowShouldClose()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	fontSize := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	res := rl.ImageText(text^, fontSize^, color^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRingLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	innerRadius := cast(^f32)api.umkaGetParam(params, 1)
	outerRadius := cast(^f32)api.umkaGetParam(params, 2)
	startAngle := cast(^f32)api.umkaGetParam(params, 3)
	endAngle := cast(^f32)api.umkaGetParam(params, 4)
	segments := cast(^c.int)api.umkaGetParam(params, 5)
	color := cast(^rl.Color)api.umkaGetParam(params, 6)
	rl.DrawRingLines(center^, innerRadius^, outerRadius^, startAngle^, endAngle^, segments^, color^) 
}
				
@(export = true)
um_ImageTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	text := cast(^cstring)api.umkaGetParam(params, 1)
	fontSize := cast(^f32)api.umkaGetParam(params, 2)
	spacing := cast(^f32)api.umkaGetParam(params, 3)
	tint := cast(^rl.Color)api.umkaGetParam(params, 4)
	res := rl.ImageTextEx(font^, text^, fontSize^, spacing^, tint^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ExportMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportMesh(mesh^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetSoundPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	pan := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetSoundPan(sound^, pan^) 
}
				
@(export = true)
um_CheckCollisionRecs :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec1 := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	rec2 := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	res := rl.CheckCollisionRecs(rec1^, rec2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UnloadAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	rl.UnloadAudioStream(stream^) 
}
				
@(export = true)
um_GenMeshTorus :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	size := cast(^f32)api.umkaGetParam(params, 1)
	radSeg := cast(^c.int)api.umkaGetParam(params, 2)
	sides := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.GenMeshTorus(radius^, size^, radSeg^, sides^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ColorToInt :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	rl.ColorToInt(color^) 
}
				
@(export = true)
um_ImageDrawText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	text := cast(^cstring)api.umkaGetParam(params, 1)
	posX := cast(^c.int)api.umkaGetParam(params, 2)
	posY := cast(^c.int)api.umkaGetParam(params, 3)
	fontSize := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.ImageDrawText(dst^, text^, posX^, posY^, fontSize^, color^) 
}
				
@(export = true)
um_GetRenderWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetRenderWidth()
}
				
@(export = true)
um_GenImageGradientRadial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	density := cast(^f32)api.umkaGetParam(params, 2)
	inner := cast(^rl.Color)api.umkaGetParam(params, 3)
	outer := cast(^rl.Color)api.umkaGetParam(params, 4)
	res := rl.GenImageGradientRadial(width^, height^, density^, inner^, outer^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetSplinePointBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	c2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	c3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	t := cast(^f32)api.umkaGetParam(params, 4)
	res := rl.GetSplinePointBezierCubic(p1^, c2^, c3^, p4^, t^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawCircleLinesV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawCircleLinesV(center^, radius^, color^) 
}
				
@(export = true)
um_DrawModelPointsEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	rotationAngle := cast(^f32)api.umkaGetParam(params, 3)
	scale := cast(^rl.Vector3)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawModelPointsEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
@(export = true)
um_DrawTriangleStrip3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector3)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawTriangleStrip3D(points^, pointCount^, color^) 
}
				
@(export = true)
um_SeekMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	position := cast(^f32)api.umkaGetParam(params, 1)
	rl.SeekMusicStream(music^, position^) 
}
				
@(export = true)
um_DrawRectangleLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	lineThick := cast(^f32)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawRectangleLinesEx(rec^, lineThick^, color^) 
}
				
@(export = true)
um_ImageDrawTriangleStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 1)
	pointCount := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawTriangleStrip(dst^, points^, pointCount^, color^) 
}
				
@(export = true)
um_IsWindowResized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowResized()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetConfigFlags :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	flags := cast(^rl.ConfigFlags)api.umkaGetParam(params, 0)
	rl.SetConfigFlags(flags^) 
}
				
@(export = true)
um_DrawLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPosX := cast(^c.int)api.umkaGetParam(params, 0)
	startPosY := cast(^c.int)api.umkaGetParam(params, 1)
	endPosX := cast(^c.int)api.umkaGetParam(params, 2)
	endPosY := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawLine(startPosX^, startPosY^, endPosX^, endPosY^, color^) 
}
				
@(export = true)
um_GetCameraMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 0)
	res := rl.GetCameraMatrix(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawSphereEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	rings := cast(^c.int)api.umkaGetParam(params, 2)
	slices := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawSphereEx(centerPos^, radius^, rings^, slices^, color^) 
}
				
@(export = true)
um_CheckCollisionCircleLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	res := rl.CheckCollisionCircleLine(center^, radius^, p1^, p2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetShaderLocation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	uniformName := cast(^cstring)api.umkaGetParam(params, 1)
	rl.GetShaderLocation(shader^, uniformName^) 
}
				
@(export = true)
um_DrawRectangleGradientV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	top := cast(^rl.Color)api.umkaGetParam(params, 4)
	bottom := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawRectangleGradientV(posX^, posY^, width^, height^, top^, bottom^) 
}
				
@(export = true)
um_UnloadSoundAlias :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	alias := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.UnloadSoundAlias(alias^) 
}
				
@(export = true)
um_GetScreenToWorld2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera2D)api.umkaGetParam(params, 1)
	res := rl.GetScreenToWorld2D(position^, camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_MakeDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dirPath := cast(^cstring)api.umkaGetParam(params, 0)
	rl.MakeDirectory(dirPath^) 
}
				
@(export = true)
um_TextIsEqual :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text1 := cast(^cstring)api.umkaGetParam(params, 0)
	text2 := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.TextIsEqual(text1^, text2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetGestureDragVector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGestureDragVector()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetAudioStreamBufferSizeDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	size := cast(^c.int)api.umkaGetParam(params, 0)
	rl.SetAudioStreamBufferSizeDefault(size^) 
}
				
@(export = true)
um_GetFileExtension :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.GetFileExtension(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadDirectoryFilesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	basePath := cast(^cstring)api.umkaGetParam(params, 0)
	filter := cast(^cstring)api.umkaGetParam(params, 1)
	scanSubdirs := cast(^bool)api.umkaGetParam(params, 2)
	res := rl.LoadDirectoryFilesEx(basePath^, filter^, scanSubdirs^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageRotate :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	degrees := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ImageRotate(image^, degrees^) 
}
				
@(export = true)
um_SetMusicPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	pitch := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetMusicPitch(music^, pitch^) 
}
				
@(export = true)
um_GetGamepadAxisCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetGamepadAxisCount(gamepad^) 
}
				
@(export = true)
um_DrawTriangleStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawTriangleStrip(points^, pointCount^, color^) 
}
				
@(export = true)
um_ImageClearBackground :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.ImageClearBackground(dst^, color^) 
}
				
@(export = true)
um_UnloadMaterial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	material := cast(^rl.Material)api.umkaGetParam(params, 0)
	rl.UnloadMaterial(material^) 
}
				
@(export = true)
um_DrawRectangleRounded :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	roundness := cast(^f32)api.umkaGetParam(params, 1)
	segments := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawRectangleRounded(rec^, roundness^, segments^, color^) 
}
				
@(export = true)
um_GetScreenHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetScreenHeight()
}
				
@(export = true)
um_DrawSplineCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineCatmullRom(points^, pointCount^, thick^, color^) 
}
				
@(export = true)
um_HideCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.HideCursor()
}
				
@(export = true)
um_LoadCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	count := cast(^^c.int)api.umkaGetParam(params, 1)
	rl.LoadCodepoints(text^, count^) 
}
				
@(export = true)
um_CameraMoveForward :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	distance := cast(^f32)api.umkaGetParam(params, 1)
	moveInWorldPlane := cast(^bool)api.umkaGetParam(params, 2)
	rl.CameraMoveForward(camera^, distance^, moveInWorldPlane^) 
}
				
@(export = true)
um_PauseAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	rl.PauseAudioStream(stream^) 
}
				
@(export = true)
um_ImageDrawCircleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	radius := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawCircleV(dst^, center^, radius^, color^) 
}
				
@(export = true)
um_TakeScreenshot :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	rl.TakeScreenshot(fileName^) 
}
				
@(export = true)
um_GetWorldToScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 1)
	res := rl.GetWorldToScreen(position^, camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetMusicTimePlayed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	res := rl.GetMusicTimePlayed(music^ )
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_GetImageColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	x := cast(^c.int)api.umkaGetParam(params, 1)
	y := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GetImageColor(image^, x^, y^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawSplineBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineBezierCubic(points^, pointCount^, thick^, color^) 
}
				
@(export = true)
um_DrawEllipse :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerX := cast(^c.int)api.umkaGetParam(params, 0)
	centerY := cast(^c.int)api.umkaGetParam(params, 1)
	radiusH := cast(^f32)api.umkaGetParam(params, 2)
	radiusV := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawEllipse(centerX^, centerY^, radiusH^, radiusV^, color^) 
}
				
@(export = true)
um_LoadShaderFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	vsCode := cast(^cstring)api.umkaGetParam(params, 0)
	fsCode := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.LoadShaderFromMemory(vsCode^, fsCode^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ToggleBorderlessWindowed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.ToggleBorderlessWindowed()
}
				
@(export = true)
um_SetGamepadVibration :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	leftMotor := cast(^f32)api.umkaGetParam(params, 1)
	rightMotor := cast(^f32)api.umkaGetParam(params, 2)
	duration := cast(^f32)api.umkaGetParam(params, 3)
	rl.SetGamepadVibration(gamepad^, leftMotor^, rightMotor^, duration^) 
}
				
@(export = true)
um_DrawRectangleGradientH :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	left := cast(^rl.Color)api.umkaGetParam(params, 4)
	right := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawRectangleGradientH(posX^, posY^, width^, height^, left^, right^) 
}
				
@(export = true)
um_ColorIsEqual :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	col1 := cast(^rl.Color)api.umkaGetParam(params, 0)
	col2 := cast(^rl.Color)api.umkaGetParam(params, 1)
	res := rl.ColorIsEqual(col1^, col2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UpdateModelAnimationBones :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	anim := cast(^rl.ModelAnimation)api.umkaGetParam(params, 1)
	frame := cast(^c.int)api.umkaGetParam(params, 2)
	rl.UpdateModelAnimationBones(model^, anim^, frame^) 
}
				
@(export = true)
um_GetMouseY :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetMouseY()
}
				
@(export = true)
um_UnloadRenderTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	target := cast(^rl.RenderTexture2D)api.umkaGetParam(params, 0)
	rl.UnloadRenderTexture(target^) 
}
				
@(export = true)
um_PollInputEvents :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.PollInputEvents()
}
				
@(export = true)
um_LoadImageColors :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	rl.LoadImageColors(image^) 
}
				
@(export = true)
um_LoadModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadModel(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CameraMoveToTarget :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	delta := cast(^f32)api.umkaGetParam(params, 1)
	rl.CameraMoveToTarget(camera^, delta^) 
}
				
@(export = true)
um_GenMeshHeightmap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	heightmap := cast(^rl.Image)api.umkaGetParam(params, 0)
	size := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	res := rl.GenMeshHeightmap(heightmap^, size^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	rl.DrawFPS(posX^, posY^) 
}
				
@(export = true)
um_DrawRectangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawRectangleLines(posX^, posY^, width^, height^, color^) 
}
				
@(export = true)
um_IsWindowMinimized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowMinimized()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageColorTint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.ImageColorTint(image^, color^) 
}
				
@(export = true)
um_GetShapesTextureRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetShapesTextureRectangle()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawCircleSector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	startAngle := cast(^f32)api.umkaGetParam(params, 2)
	endAngle := cast(^f32)api.umkaGetParam(params, 3)
	segments := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCircleSector(center^, radius^, startAngle^, endAngle^, segments^, color^) 
}
				
@(export = true)
um_ExportMeshAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportMeshAsCode(mesh^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetTouchPointId :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	index := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetTouchPointId(index^) 
}
				
@(export = true)
um_DrawBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	box := cast(^rl.BoundingBox)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.DrawBoundingBox(box^, color^) 
}
				
@(export = true)
um_IsFileNameValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.IsFileNameValid(fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetRenderHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetRenderHeight()
}
				
@(export = true)
um_GetWorldToScreen2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera2D)api.umkaGetParam(params, 1)
	res := rl.GetWorldToScreen2D(position^, camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenMeshCube :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^f32)api.umkaGetParam(params, 0)
	height := cast(^f32)api.umkaGetParam(params, 1)
	length := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.GenMeshCube(width^, height^, length^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetWindowSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetWindowSize(width^, height^) 
}
				
@(export = true)
um_SetWindowFocused :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.SetWindowFocused()
}
				
@(export = true)
um_ExportFontAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportFontAsCode(font^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetTouchY :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetTouchY()
}
				
@(export = true)
um_GetWindowHandle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetWindowHandle()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRectangleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	size := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawRectangleV(position^, size^, color^) 
}
				
@(export = true)
um_EndScissorMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndScissorMode()
}
				
@(export = true)
um_GetCameraProjectionMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	aspect := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.GetCameraProjectionMatrix(camera^, aspect^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ExportAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	list := cast(^rl.AutomationEventList)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportAutomationEventList(list^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_IsKeyDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	res := rl.IsKeyDown(key^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetGamepadName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	res := rl.GetGamepadName(gamepad^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetTouchPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	index := cast(^c.int)api.umkaGetParam(params, 0)
	res := rl.GetTouchPosition(index^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_BeginMode3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera3D)api.umkaGetParam(params, 0)
	rl.BeginMode3D(camera^) 
}
				
@(export = true)
um_SetWindowMonitor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.SetWindowMonitor(monitor^) 
}
				
@(export = true)
um_TextToCamel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToCamel(text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenMeshSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	rings := cast(^c.int)api.umkaGetParam(params, 1)
	slices := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GenMeshSphere(radius^, rings^, slices^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsMouseButtonReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	button := cast(^rl.MouseButton)api.umkaGetParam(params, 0)
	res := rl.IsMouseButtonReleased(button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	list := cast(^^rl.AutomationEventList)api.umkaGetParam(params, 0)
	rl.SetAutomationEventList(list^) 
}
				
@(export = true)
um_GenImageCellular :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	tileSize := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GenImageCellular(width^, height^, tileSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawSplineSegmentBezierQuadratic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	c2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	thick := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawSplineSegmentBezierQuadratic(p1^, c2^, p3^, thick^, color^) 
}
				
@(export = true)
um_BeginScissorMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	x := cast(^c.int)api.umkaGetParam(params, 0)
	y := cast(^c.int)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	rl.BeginScissorMode(x^, y^, width^, height^) 
}
				
@(export = true)
um_DecompressData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	compData := cast(^rawptr)api.umkaGetParam(params, 0)
	compDataSize := cast(^c.int)api.umkaGetParam(params, 1)
	dataSize := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.DecompressData(compData^, compDataSize^, dataSize^) 
}
				
@(export = true)
um_WaveCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^^rl.Wave)api.umkaGetParam(params, 0)
	initFrame := cast(^c.int)api.umkaGetParam(params, 1)
	finalFrame := cast(^c.int)api.umkaGetParam(params, 2)
	rl.WaveCrop(wave^, initFrame^, finalFrame^) 
}
				
@(export = true)
um_GenImageChecked :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	checksX := cast(^c.int)api.umkaGetParam(params, 2)
	checksY := cast(^c.int)api.umkaGetParam(params, 3)
	col1 := cast(^rl.Color)api.umkaGetParam(params, 4)
	col2 := cast(^rl.Color)api.umkaGetParam(params, 5)
	res := rl.GenImageChecked(width^, height^, checksX^, checksY^, col1^, col2^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetRandomSeed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	seed := cast(^c.uint)api.umkaGetParam(params, 0)
	rl.SetRandomSeed(seed^) 
}
				
@(export = true)
um_UnloadWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	rl.UnloadWave(wave^) 
}
				
@(export = true)
um_GetMonitorPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	res := rl.GetMonitorPosition(monitor^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsWindowHidden :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowHidden()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetMonitorWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetMonitorWidth(monitor^) 
}
				
@(export = true)
um_CameraRoll :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	angle := cast(^f32)api.umkaGetParam(params, 1)
	rl.CameraRoll(camera^, angle^) 
}
				
@(export = true)
um_DrawPoint3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.DrawPoint3D(position^, color^) 
}
				
@(export = true)
um_DrawTriangleFan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawTriangleFan(points^, pointCount^, color^) 
}
				
@(export = true)
um_LoadMusicStreamFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileType := cast(^cstring)api.umkaGetParam(params, 0)
	data := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.LoadMusicStreamFromMemory(fileType^, data^, dataSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	innerRadius := cast(^f32)api.umkaGetParam(params, 1)
	outerRadius := cast(^f32)api.umkaGetParam(params, 2)
	startAngle := cast(^f32)api.umkaGetParam(params, 3)
	endAngle := cast(^f32)api.umkaGetParam(params, 4)
	segments := cast(^c.int)api.umkaGetParam(params, 5)
	color := cast(^rl.Color)api.umkaGetParam(params, 6)
	rl.DrawRing(center^, innerRadius^, outerRadius^, startAngle^, endAngle^, segments^, color^) 
}
				
@(export = true)
um_GenImageGradientLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	direction := cast(^c.int)api.umkaGetParam(params, 2)
	start := cast(^rl.Color)api.umkaGetParam(params, 3)
	end := cast(^rl.Color)api.umkaGetParam(params, 4)
	res := rl.GenImageGradientLinear(width^, height^, direction^, start^, end^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetPixelColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	srcPtr := cast(^rawptr)api.umkaGetParam(params, 0)
	format := cast(^rl.PixelFormat)api.umkaGetParam(params, 1)
	res := rl.GetPixelColor(srcPtr^, format^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetMouseWheelMoveV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetMouseWheelMoveV()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CameraPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	angle := cast(^f32)api.umkaGetParam(params, 1)
	lockView := cast(^bool)api.umkaGetParam(params, 2)
	rotateAroundTarget := cast(^bool)api.umkaGetParam(params, 3)
	rotateUp := cast(^bool)api.umkaGetParam(params, 4)
	rl.CameraPitch(camera^, angle^, lockView^, rotateAroundTarget^, rotateUp^) 
}
				
@(export = true)
um_DrawLineStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawLineStrip(points^, pointCount^, color^) 
}
				
@(export = true)
um_SetMusicPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	pan := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetMusicPan(music^, pan^) 
}
				
@(export = true)
um_UpdateTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	pixels := cast(^rawptr)api.umkaGetParam(params, 1)
	rl.UpdateTexture(texture^, pixels^) 
}
				
@(export = true)
um_ToggleFullscreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.ToggleFullscreen()
}
				
@(export = true)
um_UploadMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^^rl.Mesh)api.umkaGetParam(params, 0)
	is_dynamic := cast(^bool)api.umkaGetParam(params, 1)
	rl.UploadMesh(mesh^, is_dynamic^) 
}
				
@(export = true)
um_TextCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^[^]byte)api.umkaGetParam(params, 0)
	src := cast(^cstring)api.umkaGetParam(params, 1)
	rl.TextCopy(dst^, src^) 
}
				
@(export = true)
um_SetTextureFilter :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	filter := cast(^rl.TextureFilter)api.umkaGetParam(params, 1)
	rl.SetTextureFilter(texture^, filter^) 
}
				
@(export = true)
um_LoadTextureFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	res := rl.LoadTextureFromImage(image^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsAudioStreamValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	res := rl.IsAudioStreamValid(stream^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetTextureWrap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	wrap := cast(^rl.TextureWrap)api.umkaGetParam(params, 1)
	rl.SetTextureWrap(texture^, wrap^) 
}
				
@(export = true)
um_GetCodepointCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	rl.GetCodepointCount(text^) 
}
				
@(export = true)
um_GetSplinePointBezierQuad :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	c2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	t := cast(^f32)api.umkaGetParam(params, 3)
	res := rl.GetSplinePointBezierQuad(p1^, c2^, p3^, t^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawCubeWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	width := cast(^f32)api.umkaGetParam(params, 1)
	height := cast(^f32)api.umkaGetParam(params, 2)
	length := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawCubeWires(position^, width^, height^, length^, color^) 
}
				
@(export = true)
um_SetWindowPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	x := cast(^c.int)api.umkaGetParam(params, 0)
	y := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetWindowPosition(x^, y^) 
}
				
@(export = true)
um_GenMeshPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sides := cast(^c.int)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.GenMeshPoly(sides^, radius^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsModelValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	res := rl.IsModelValid(model^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawTextureV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	tint := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawTextureV(texture^, position^, tint^) 
}
				
@(export = true)
um_GenMeshPlane :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^f32)api.umkaGetParam(params, 0)
	length := cast(^f32)api.umkaGetParam(params, 1)
	resX := cast(^c.int)api.umkaGetParam(params, 2)
	resZ := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.GenMeshPlane(width^, length^, resX^, resZ^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetTime()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_IsCursorHidden :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsCursorHidden()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageFlipVertical :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageFlipVertical(image^) 
}
				
@(export = true)
um_GetShapesTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetShapesTexture()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCameraUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	res := rl.GetCameraUp(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetFPS()
}
				
@(export = true)
um_DrawRectangleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.DrawRectangleRec(rec^, color^) 
}
				
@(export = true)
um_IsCursorOnScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsCursorOnScreen()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawSphere(centerPos^, radius^, color^) 
}
				
@(export = true)
um_LoadImageAnim :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	frames := cast(^^c.int)api.umkaGetParam(params, 1)
	res := rl.LoadImageAnim(fileName^, frames^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetSoundPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	pitch := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetSoundPitch(sound^, pitch^) 
}
				
@(export = true)
um_GetFileNameWithoutExt :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	filePath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.GetFileNameWithoutExt(filePath^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UnloadMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.UnloadMusicStream(music^) 
}
				
@(export = true)
um_ImageAlphaMask :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	alphaMask := cast(^rl.Image)api.umkaGetParam(params, 1)
	rl.ImageAlphaMask(image^, alphaMask^) 
}
				
@(export = true)
um_SetWindowTitle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	title := cast(^cstring)api.umkaGetParam(params, 0)
	rl.SetWindowTitle(title^) 
}
				
@(export = true)
um_DrawSplineSegmentBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	thick := cast(^f32)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawSplineSegmentBasis(p1^, p2^, p3^, p4^, thick^, color^) 
}
				
@(export = true)
um_ImageRotateCW :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageRotateCW(image^) 
}
				
@(export = true)
um_SetWindowOpacity :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	opacity := cast(^f32)api.umkaGetParam(params, 0)
	rl.SetWindowOpacity(opacity^) 
}
				
@(export = true)
um_ImageColorContrast :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	contrast := cast(^f32)api.umkaGetParam(params, 1)
	rl.ImageColorContrast(image^, contrast^) 
}
				
@(export = true)
um_MinimizeWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.MinimizeWindow()
}
				
@(export = true)
um_GetMeshBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	res := rl.GetMeshBoundingBox(mesh^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetMouseOffset :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	offsetX := cast(^c.int)api.umkaGetParam(params, 0)
	offsetY := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetMouseOffset(offsetX^, offsetY^) 
}
				
@(export = true)
um_InitWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	title := cast(^cstring)api.umkaGetParam(params, 2)
	rl.InitWindow(width^, height^, title^) 
}
				
@(export = true)
um_LoadMaterials :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	materialCount := cast(^^c.int)api.umkaGetParam(params, 1)
	rl.LoadMaterials(fileName^, materialCount^) 
}
				
@(export = true)
um_IsKeyReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	res := rl.IsKeyReleased(key^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_FileExists :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.FileExists(fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_EndShaderMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndShaderMode()
}
				
@(export = true)
um_IsFileDropped :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsFileDropped()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetSplinePointCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	t := cast(^f32)api.umkaGetParam(params, 4)
	res := rl.GetSplinePointCatmullRom(p1^, p2^, p3^, p4^, t^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCodepointPrevious :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	codepointSize := cast(^^c.int)api.umkaGetParam(params, 1)
	res := rl.GetCodepointPrevious(text^, codepointSize^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_CheckCollisionSpheres :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center1 := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radius1 := cast(^f32)api.umkaGetParam(params, 1)
	center2 := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	radius2 := cast(^f32)api.umkaGetParam(params, 3)
	res := rl.CheckCollisionSpheres(center1^, radius1^, center2^, radius2^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetMonitorRefreshRate :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetMonitorRefreshRate(monitor^) 
}
				
@(export = true)
um_DrawCubeWiresV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	size := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawCubeWiresV(position^, size^, color^) 
}
				
@(export = true)
um_SetClipboardText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	rl.SetClipboardText(text^) 
}
				
@(export = true)
um_DrawText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	posX := cast(^c.int)api.umkaGetParam(params, 1)
	posY := cast(^c.int)api.umkaGetParam(params, 2)
	fontSize := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawText(text^, posX^, posY^, fontSize^, color^) 
}
				
@(export = true)
um_LoadAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadAutomationEventList(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_EndMode3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndMode3D()
}
				
@(export = true)
um_DrawModelPoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	scale := cast(^f32)api.umkaGetParam(params, 2)
	tint := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawModelPoints(model^, position^, scale^, tint^) 
}
				
@(export = true)
um_ImageDrawCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	centerX := cast(^c.int)api.umkaGetParam(params, 1)
	centerY := cast(^c.int)api.umkaGetParam(params, 2)
	radius := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDrawCircle(dst^, centerX^, centerY^, radius^, color^) 
}
				
@(export = true)
um_ResumeSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.ResumeSound(sound^) 
}
				
@(export = true)
um_UnloadDroppedFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	files := cast(^rl.FilePathList)api.umkaGetParam(params, 0)
	rl.UnloadDroppedFiles(files^) 
}
				
@(export = true)
um_SetMousePosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	x := cast(^c.int)api.umkaGetParam(params, 0)
	y := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetMousePosition(x^, y^) 
}
				
@(export = true)
um_GetSplinePointLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	t := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.GetSplinePointLinear(startPos^, endPos^, t^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CloseWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.CloseWindow()
}
				
@(export = true)
um_GetApplicationDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetApplicationDirectory()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageDrawTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	v1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	v2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	v3 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDrawTriangle(dst^, v1^, v2^, v3^, color^) 
}
				
@(export = true)
um_IsWindowReady :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowReady()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetImageAlphaBorder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	threshold := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.GetImageAlphaBorder(image^, threshold^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawCube :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	width := cast(^f32)api.umkaGetParam(params, 1)
	height := cast(^f32)api.umkaGetParam(params, 2)
	length := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawCube(position^, width^, height^, length^, color^) 
}
				
@(export = true)
um_LoadFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	dataSize := cast(^^c.int)api.umkaGetParam(params, 1)
	rl.LoadFileData(fileName^, dataSize^) 
}
				
@(export = true)
um_RestoreWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.RestoreWindow()
}
				
@(export = true)
um_LoadImagePalette :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	maxPaletteSize := cast(^c.int)api.umkaGetParam(params, 1)
	colorCount := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.LoadImagePalette(image^, maxPaletteSize^, colorCount^) 
}
				
@(export = true)
um_DrawTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	posX := cast(^c.int)api.umkaGetParam(params, 1)
	posY := cast(^c.int)api.umkaGetParam(params, 2)
	tint := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawTexture(texture^, posX^, posY^, tint^) 
}
				
@(export = true)
um_DrawCircleSectorLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	startAngle := cast(^f32)api.umkaGetParam(params, 2)
	endAngle := cast(^f32)api.umkaGetParam(params, 3)
	segments := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCircleSectorLines(center^, radius^, startAngle^, endAngle^, segments^, color^) 
}
				
@(export = true)
um_EndBlendMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndBlendMode()
}
				
@(export = true)
um_DrawPixel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	posX := cast(^c.int)api.umkaGetParam(params, 0)
	posY := cast(^c.int)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawPixel(posX^, posY^, color^) 
}
				
@(export = true)
um_SetWindowMaxSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetWindowMaxSize(width^, height^) 
}
				
@(export = true)
um_UnloadDirectoryFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	files := cast(^rl.FilePathList)api.umkaGetParam(params, 0)
	rl.UnloadDirectoryFiles(files^) 
}
				
@(export = true)
um_UnloadModelAnimations :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	animations := cast(^[^]rl.ModelAnimation)api.umkaGetParam(params, 0)
	animCount := cast(^c.int)api.umkaGetParam(params, 1)
	rl.UnloadModelAnimations(animations^, animCount^) 
}
				
@(export = true)
um_ImageFlipHorizontal :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageFlipHorizontal(image^) 
}
				
@(export = true)
um_ColorFromNormalized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	normalized := cast(^rl.Vector4)api.umkaGetParam(params, 0)
	res := rl.ColorFromNormalized(normalized^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetWorldToScreenEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.GetWorldToScreenEx(position^, camera^, width^, height^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetMonitorPhysicalHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetMonitorPhysicalHeight(monitor^) 
}
				
@(export = true)
um_LoadFontEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	fontSize := cast(^c.int)api.umkaGetParam(params, 1)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 2)
	codepointCount := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.LoadFontEx(fileName^, fontSize^, codepoints^, codepointCount^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DisableCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.DisableCursor()
}
				
@(export = true)
um_DrawTriangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	v1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	v2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	v3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawTriangleLines(v1^, v2^, v3^, color^) 
}
				
@(export = true)
um_GenMeshHemiSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	rings := cast(^c.int)api.umkaGetParam(params, 1)
	slices := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GenMeshHemiSphere(radius^, rings^, slices^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageDrawTriangleFan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 1)
	pointCount := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawTriangleFan(dst^, points^, pointCount^, color^) 
}
				
@(export = true)
um_IsAudioStreamPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	res := rl.IsAudioStreamPlaying(stream^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageMipmaps :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageMipmaps(image^) 
}
				
@(export = true)
um_IsImageValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	res := rl.IsImageValid(image^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	font := cast(^rl.Font)api.umkaGetParam(params, 1)
	text := cast(^cstring)api.umkaGetParam(params, 2)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	fontSize := cast(^f32)api.umkaGetParam(params, 4)
	spacing := cast(^f32)api.umkaGetParam(params, 5)
	tint := cast(^rl.Color)api.umkaGetParam(params, 6)
	rl.ImageDrawTextEx(dst^, font^, text^, position^, fontSize^, spacing^, tint^) 
}
				
@(export = true)
um_CheckCollisionPointLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	point := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	threshold := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.CheckCollisionPointLine(point^, p1^, p2^, threshold^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawCircleLinesV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	radius := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawCircleLinesV(dst^, center^, radius^, color^) 
}
				
@(export = true)
um_IsPathFile :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	path := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.IsPathFile(path^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetPixelDataSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	format := cast(^rl.PixelFormat)api.umkaGetParam(params, 2)
	rl.GetPixelDataSize(width^, height^, format^) 
}
				
@(export = true)
um_DrawRectangleRoundedLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	roundness := cast(^f32)api.umkaGetParam(params, 1)
	segments := cast(^c.int)api.umkaGetParam(params, 2)
	lineThick := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawRectangleRoundedLinesEx(rec^, roundness^, segments^, lineThick^, color^) 
}
				
@(export = true)
um_SetTraceLogLevel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	logLevel := cast(^rl.TraceLogLevel)api.umkaGetParam(params, 0)
	rl.SetTraceLogLevel(logLevel^) 
}
				
@(export = true)
um_ImageFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	res := rl.ImageFromImage(image^, rec^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UnloadFont :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	rl.UnloadFont(font^) 
}
				
@(export = true)
um_GetMonitorName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	res := rl.GetMonitorName(monitor^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsSoundValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	res := rl.IsSoundValid(sound^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetScreenToWorldRayEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 1)
	width := cast(^c.int)api.umkaGetParam(params, 2)
	height := cast(^c.int)api.umkaGetParam(params, 3)
	res := rl.GetScreenToWorldRayEx(position^, camera^, width^, height^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UnloadShader :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	rl.UnloadShader(shader^) 
}
				
@(export = true)
um_DrawLineEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawLineEx(startPos^, endPos^, thick^, color^) 
}
				
@(export = true)
um_LoadImageFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileType := cast(^cstring)api.umkaGetParam(params, 0)
	fileData := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.LoadImageFromMemory(fileType^, fileData^, dataSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenImageGradientSquare :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	density := cast(^f32)api.umkaGetParam(params, 2)
	inner := cast(^rl.Color)api.umkaGetParam(params, 3)
	outer := cast(^rl.Color)api.umkaGetParam(params, 4)
	res := rl.GenImageGradientSquare(width^, height^, density^, inner^, outer^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ColorAlphaBlend :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^rl.Color)api.umkaGetParam(params, 0)
	src := cast(^rl.Color)api.umkaGetParam(params, 1)
	tint := cast(^rl.Color)api.umkaGetParam(params, 2)
	res := rl.ColorAlphaBlend(dst^, src^, tint^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawGrid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	slices := cast(^c.int)api.umkaGetParam(params, 0)
	spacing := cast(^f32)api.umkaGetParam(params, 1)
	rl.DrawGrid(slices^, spacing^) 
}
				
@(export = true)
um_GenImageText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	text := cast(^cstring)api.umkaGetParam(params, 2)
	res := rl.GenImageText(width^, height^, text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetGesturePinchVector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGesturePinchVector()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadImageFromTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	res := rl.LoadImageFromTexture(texture^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageDrawTriangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	v1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	v2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	v3 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDrawTriangleLines(dst^, v1^, v2^, v3^, color^) 
}
				
@(export = true)
um_GetGlyphInfo :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	codepoint := cast(^rune)api.umkaGetParam(params, 1)
	res := rl.GetGlyphInfo(font^, codepoint^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadImageAnimFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileType := cast(^cstring)api.umkaGetParam(params, 0)
	fileData := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	frames := cast(^^c.int)api.umkaGetParam(params, 3)
	res := rl.LoadImageAnimFromMemory(fileType^, fileData^, dataSize^, frames^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetGesturePinchAngle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGesturePinchAngle()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_GenMeshCylinder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	radius := cast(^f32)api.umkaGetParam(params, 0)
	height := cast(^f32)api.umkaGetParam(params, 1)
	slices := cast(^c.int)api.umkaGetParam(params, 2)
	res := rl.GenMeshCylinder(radius^, height^, slices^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageColorReplace :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	replace := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.ImageColorReplace(image^, color^, replace^) 
}
				
@(export = true)
um_TextToPascal :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.TextToPascal(text^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ColorAlpha :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	alpha := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.ColorAlpha(color^, alpha^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GenMeshCubicmap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	cubicmap := cast(^rl.Image)api.umkaGetParam(params, 0)
	cubeSize := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	res := rl.GenMeshCubicmap(cubicmap^, cubeSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCollisionRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec1 := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	rec2 := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	res := rl.GetCollisionRec(rec1^, rec2^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sampleRate := cast(^c.uint)api.umkaGetParam(params, 0)
	sampleSize := cast(^c.uint)api.umkaGetParam(params, 1)
	channels := cast(^c.uint)api.umkaGetParam(params, 2)
	res := rl.LoadAudioStream(sampleRate^, sampleSize^, channels^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawSplineSegmentBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	c2 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	c3 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p4 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	thick := cast(^f32)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawSplineSegmentBezierCubic(p1^, c2^, c3^, p4^, thick^, color^) 
}
				
@(export = true)
um_ImageToPOT :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	fill := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.ImageToPOT(image^, fill^) 
}
				
@(export = true)
um_SetAudioStreamPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	pan := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetAudioStreamPan(stream^, pan^) 
}
				
@(export = true)
um_TextFindIndex :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	find := cast(^cstring)api.umkaGetParam(params, 1)
	rl.TextFindIndex(text^, find^) 
}
				
@(export = true)
um_DrawSphereWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radius := cast(^f32)api.umkaGetParam(params, 1)
	rings := cast(^c.int)api.umkaGetParam(params, 2)
	slices := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawSphereWires(centerPos^, radius^, rings^, slices^, color^) 
}
				
@(export = true)
um_ChangeDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dir := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.ChangeDirectory(dir^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawTextureRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	source := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	tint := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawTextureRec(texture^, source^, position^, tint^) 
}
				
@(export = true)
um_GenTextureMipmaps :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^^rl.Texture2D)api.umkaGetParam(params, 0)
	rl.GenTextureMipmaps(texture^) 
}
				
@(export = true)
um_GetGlyphIndex :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	codepoint := cast(^rune)api.umkaGetParam(params, 1)
	rl.GetGlyphIndex(font^, codepoint^) 
}
				
@(export = true)
um_DrawTextPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	text := cast(^cstring)api.umkaGetParam(params, 1)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	origin := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	rotation := cast(^f32)api.umkaGetParam(params, 4)
	fontSize := cast(^f32)api.umkaGetParam(params, 5)
	spacing := cast(^f32)api.umkaGetParam(params, 6)
	tint := cast(^rl.Color)api.umkaGetParam(params, 7)
	rl.DrawTextPro(font^, text^, position^, origin^, rotation^, fontSize^, spacing^, tint^) 
}
				
@(export = true)
um_CameraMoveRight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	distance := cast(^f32)api.umkaGetParam(params, 1)
	moveInWorldPlane := cast(^bool)api.umkaGetParam(params, 2)
	rl.CameraMoveRight(camera^, distance^, moveInWorldPlane^) 
}
				
@(export = true)
um_SetModelMeshMaterial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^^rl.Model)api.umkaGetParam(params, 0)
	meshId := cast(^c.int)api.umkaGetParam(params, 1)
	materialId := cast(^c.int)api.umkaGetParam(params, 2)
	rl.SetModelMeshMaterial(model^, meshId^, materialId^) 
}
				
@(export = true)
um_GetMusicTimeLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	res := rl.GetMusicTimeLength(music^ )
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_SetShapesTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	source := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	rl.SetShapesTexture(texture^, source^) 
}
				
@(export = true)
um_SaveFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	text := cast(^[^]byte)api.umkaGetParam(params, 1)
	res := rl.SaveFileText(fileName^, text^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawTextureEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	rotation := cast(^f32)api.umkaGetParam(params, 2)
	scale := cast(^f32)api.umkaGetParam(params, 3)
	tint := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawTextureEx(texture^, position^, rotation^, scale^, tint^) 
}
				
@(export = true)
um_DrawSplineBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineBasis(points^, pointCount^, thick^, color^) 
}
				
@(export = true)
um_DrawTriangle3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	v1 := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	v2 := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	v3 := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawTriangle3D(v1^, v2^, v3^, color^) 
}
				
@(export = true)
um_SetMusicVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	volume := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetMusicVolume(music^, volume^) 
}
				
@(export = true)
um_UpdateModelAnimation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	anim := cast(^rl.ModelAnimation)api.umkaGetParam(params, 1)
	frame := cast(^c.int)api.umkaGetParam(params, 2)
	rl.UpdateModelAnimation(model^, anim^, frame^) 
}
				
@(export = true)
um_LoadDroppedFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.LoadDroppedFiles()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CheckCollisionPointTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	point := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	p1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	p2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	p3 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	res := rl.CheckCollisionPointTriangle(point^, p1^, p2^, p3^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawPixelV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.ImageDrawPixelV(dst^, position^, color^) 
}
				
@(export = true)
um_GetRayCollisionMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 1)
	transform := cast(^rl.Matrix)api.umkaGetParam(params, 2)
	res := rl.GetRayCollisionMesh(ray^, mesh^, transform^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawMeshInstanced :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	material := cast(^rl.Material)api.umkaGetParam(params, 1)
	transforms := cast(^[^]rl.Matrix)api.umkaGetParam(params, 2)
	instances := cast(^c.int)api.umkaGetParam(params, 3)
	rl.DrawMeshInstanced(mesh^, material^, transforms^, instances^) 
}
				
@(export = true)
um_GetCodepoint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	codepointSize := cast(^^c.int)api.umkaGetParam(params, 1)
	res := rl.GetCodepoint(text^, codepointSize^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_IsMaterialValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	material := cast(^rl.Material)api.umkaGetParam(params, 0)
	res := rl.IsMaterialValid(material^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetWindowIcons :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	images := cast(^[^]rl.Image)api.umkaGetParam(params, 0)
	count := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetWindowIcons(images^, count^) 
}
				
@(export = true)
um_GetMouseDelta :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetMouseDelta()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetRayCollisionSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	center := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.GetRayCollisionSphere(ray^, center^, radius^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageDrawLineV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	start := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	end := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawLineV(dst^, start^, end^, color^) 
}
				
@(export = true)
um_ImageDrawRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	posX := cast(^c.int)api.umkaGetParam(params, 1)
	posY := cast(^c.int)api.umkaGetParam(params, 2)
	width := cast(^c.int)api.umkaGetParam(params, 3)
	height := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.ImageDrawRectangle(dst^, posX^, posY^, width^, height^, color^) 
}
				
@(export = true)
um_WaveCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	res := rl.WaveCopy(wave^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsMouseButtonDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	button := cast(^rl.MouseButton)api.umkaGetParam(params, 0)
	res := rl.IsMouseButtonDown(button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawRectangleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	size := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.ImageDrawRectangleV(dst^, position^, size^, color^) 
}
				
@(export = true)
um_ExportImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportImage(image^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_LoadTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadTexture(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_WaitTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	seconds := cast(^f64)api.umkaGetParam(params, 0)
	rl.WaitTime(seconds^) 
}
				
@(export = true)
um_GetMousePosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetMousePosition()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetFrameTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetFrameTime()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_GetFileModTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	rl.GetFileModTime(fileName^) 
}
				
@(export = true)
um_ExportDataAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	fileName := cast(^cstring)api.umkaGetParam(params, 2)
	res := rl.ExportDataAsCode(data^, dataSize^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	flags := cast(^rl.ConfigFlags)api.umkaGetParam(params, 0)
	rl.SetWindowState(flags^) 
}
				
@(export = true)
um_LoadImageRaw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	width := cast(^c.int)api.umkaGetParam(params, 1)
	height := cast(^c.int)api.umkaGetParam(params, 2)
	format := cast(^rl.PixelFormat)api.umkaGetParam(params, 3)
	headerSize := cast(^c.int)api.umkaGetParam(params, 4)
	res := rl.LoadImageRaw(fileName^, width^, height^, format^, headerSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_TextJoin :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	textList := cast(^[^]cstring)api.umkaGetParam(params, 0)
	count := cast(^c.int)api.umkaGetParam(params, 1)
	delimiter := cast(^cstring)api.umkaGetParam(params, 2)
	res := rl.TextJoin(textList^, count^, delimiter^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageAlphaCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	threshold := cast(^f32)api.umkaGetParam(params, 1)
	rl.ImageAlphaCrop(image^, threshold^) 
}
				
@(export = true)
um_GetScreenWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetScreenWidth()
}
				
@(export = true)
um_GetCameraViewMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	res := rl.GetCameraViewMatrix(camera^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsGamepadButtonUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gamepad := cast(^c.int)api.umkaGetParam(params, 0)
	button := cast(^rl.GamepadButton)api.umkaGetParam(params, 1)
	res := rl.IsGamepadButtonUp(gamepad^, button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_StartAutomationEventRecording :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.StartAutomationEventRecording()
}
				
@(export = true)
um_ImageKernelConvolution :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	kernel := cast(^[^]f32)api.umkaGetParam(params, 1)
	kernelSize := cast(^c.int)api.umkaGetParam(params, 2)
	rl.ImageKernelConvolution(image^, kernel^, kernelSize^) 
}
				
@(export = true)
um_DrawModelEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)api.umkaGetParam(params, 2)
	rotationAngle := cast(^f32)api.umkaGetParam(params, 3)
	scale := cast(^rl.Vector3)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawModelEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
@(export = true)
um_UpdateMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	music := cast(^rl.Music)api.umkaGetParam(params, 0)
	rl.UpdateMusicStream(music^) 
}
				
@(export = true)
um_ColorLerp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color1 := cast(^rl.Color)api.umkaGetParam(params, 0)
	color2 := cast(^rl.Color)api.umkaGetParam(params, 1)
	factor := cast(^f32)api.umkaGetParam(params, 2)
	res := rl.ColorLerp(color1^, color2^, factor^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ColorNormalize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	res := rl.ColorNormalize(color^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsWindowMaximized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowMaximized()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetCodepointNext :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	codepointSize := cast(^^c.int)api.umkaGetParam(params, 1)
	res := rl.GetCodepointNext(text^, codepointSize^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageAlphaPremultiply :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageAlphaPremultiply(image^) 
}
				
@(export = true)
um_UnloadAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	list := cast(^rl.AutomationEventList)api.umkaGetParam(params, 0)
	rl.UnloadAutomationEventList(list^) 
}
				
@(export = true)
um_UnloadModelAnimation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	anim := cast(^rl.ModelAnimation)api.umkaGetParam(params, 0)
	rl.UnloadModelAnimation(anim^) 
}
				
@(export = true)
um_DrawCubeV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	size := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawCubeV(position^, size^, color^) 
}
				
@(export = true)
um_ImageDrawCircleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	centerX := cast(^c.int)api.umkaGetParam(params, 1)
	centerY := cast(^c.int)api.umkaGetParam(params, 2)
	radius := cast(^c.int)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.ImageDrawCircleLines(dst^, centerX^, centerY^, radius^, color^) 
}
				
@(export = true)
um_DrawCylinderWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radiusTop := cast(^f32)api.umkaGetParam(params, 1)
	radiusBottom := cast(^f32)api.umkaGetParam(params, 2)
	height := cast(^f32)api.umkaGetParam(params, 3)
	slices := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCylinderWires(position^, radiusTop^, radiusBottom^, height^, slices^, color^) 
}
				
@(export = true)
um_EndTextureMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndTextureMode()
}
				
@(export = true)
um_GetShaderLocationAttrib :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	attribName := cast(^cstring)api.umkaGetParam(params, 1)
	rl.GetShaderLocationAttrib(shader^, attribName^) 
}
				
@(export = true)
um_SetShaderValueTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	locIndex := cast(^c.int)api.umkaGetParam(params, 1)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 2)
	rl.SetShaderValueTexture(shader^, locIndex^, texture^) 
}
				
@(export = true)
um_LoadImageFromScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.LoadImageFromScreen()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageResizeCanvas :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	newWidth := cast(^c.int)api.umkaGetParam(params, 1)
	newHeight := cast(^c.int)api.umkaGetParam(params, 2)
	offsetX := cast(^c.int)api.umkaGetParam(params, 3)
	offsetY := cast(^c.int)api.umkaGetParam(params, 4)
	fill := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.ImageResizeCanvas(image^, newWidth^, newHeight^, offsetX^, offsetY^, fill^) 
}
				
@(export = true)
um_InitAudioDevice :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.InitAudioDevice()
}
				
@(export = true)
um_TextSplit :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	delimiter := cast(^byte)api.umkaGetParam(params, 1)
	count := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.TextSplit(text^, delimiter^, count^) 
}
				
@(export = true)
um_GetPrevDirectoryPath :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dirPath := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.GetPrevDirectoryPath(dirPath^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsSoundPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	res := rl.IsSoundPlaying(sound^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_PlayAutomationEvent :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	event := cast(^rl.AutomationEvent)api.umkaGetParam(params, 0)
	rl.PlayAutomationEvent(event^) 
}
				
@(export = true)
um_ImageCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	crop := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	rl.ImageCrop(image^, crop^) 
}
				
@(export = true)
um_GetModelBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	res := rl.GetModelBoundingBox(model^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawLine3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	color := cast(^rl.Color)api.umkaGetParam(params, 2)
	rl.DrawLine3D(startPos^, endPos^, color^) 
}
				
@(export = true)
um_CheckCollisionLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos1 := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	endPos1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	startPos2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	endPos2 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	collisionPoint := cast(^[^]rl.Vector2)api.umkaGetParam(params, 4)
	res := rl.CheckCollisionLines(startPos1^, endPos1^, startPos2^, endPos2^, collisionPoint^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UnloadRandomSequence :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sequence := cast(^[^]c.int)api.umkaGetParam(params, 0)
	rl.UnloadRandomSequence(sequence^) 
}
				
@(export = true)
um_DrawSplineBezierQuadratic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineBezierQuadratic(points^, pointCount^, thick^, color^) 
}
				
@(export = true)
um_SetTargetFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fps := cast(^c.int)api.umkaGetParam(params, 0)
	rl.SetTargetFPS(fps^) 
}
				
@(export = true)
um_LoadSoundFromWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	res := rl.LoadSoundFromWave(wave^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ImageColorBrightness :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	brightness := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ImageColorBrightness(image^, brightness^) 
}
				
@(export = true)
um_LoadWaveSamples :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	rl.LoadWaveSamples(wave^) 
}
				
@(export = true)
um_SetPixelColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dstPtr := cast(^rawptr)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	format := cast(^rl.PixelFormat)api.umkaGetParam(params, 2)
	rl.SetPixelColor(dstPtr^, color^, format^) 
}
				
@(export = true)
um_SetWindowMinSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	rl.SetWindowMinSize(width^, height^) 
}
				
@(export = true)
um_IsMouseButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	button := cast(^rl.MouseButton)api.umkaGetParam(params, 0)
	res := rl.IsMouseButtonPressed(button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	material := cast(^rl.Material)api.umkaGetParam(params, 1)
	transform := cast(^rl.Matrix)api.umkaGetParam(params, 2)
	rl.DrawMesh(mesh^, material^, transform^) 
}
				
@(export = true)
um_LoadRenderTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	width := cast(^c.int)api.umkaGetParam(params, 0)
	height := cast(^c.int)api.umkaGetParam(params, 1)
	res := rl.LoadRenderTexture(width^, height^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UnloadSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.UnloadSound(sound^) 
}
				
@(export = true)
um_ImageCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	res := rl.ImageCopy(image^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetFileLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	rl.GetFileLength(fileName^) 
}
				
@(export = true)
um_MeasureText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	fontSize := cast(^c.int)api.umkaGetParam(params, 1)
	rl.MeasureText(text^, fontSize^) 
}
				
@(export = true)
um_ImageDrawLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	startPosX := cast(^c.int)api.umkaGetParam(params, 1)
	startPosY := cast(^c.int)api.umkaGetParam(params, 2)
	endPosX := cast(^c.int)api.umkaGetParam(params, 3)
	endPosY := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.ImageDrawLine(dst^, startPosX^, startPosY^, endPosX^, endPosY^, color^) 
}
				
@(export = true)
um_DrawCircleGradient :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerX := cast(^c.int)api.umkaGetParam(params, 0)
	centerY := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	inner := cast(^rl.Color)api.umkaGetParam(params, 3)
	outer := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawCircleGradient(centerX^, centerY^, radius^, inner^, outer^) 
}
				
@(export = true)
um_GetMonitorHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetMonitorHeight(monitor^) 
}
				
@(export = true)
um_DrawPolyLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	sides := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	rotation := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawPolyLines(center^, sides^, radius^, rotation^, color^) 
}
				
@(export = true)
um_LoadSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadSound(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetExitKey :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	key := cast(^rl.KeyboardKey)api.umkaGetParam(params, 0)
	rl.SetExitKey(key^) 
}
				
@(export = true)
um_LoadModelFromMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	res := rl.LoadModelFromMesh(mesh^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_UnloadCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 0)
	rl.UnloadCodepoints(codepoints^) 
}
				
@(export = true)
um_LoadImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadImage(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	res := rl.LoadMusicStream(fileName^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_ExportImageAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportImageAsCode(image^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ColorBrightness :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	factor := cast(^f32)api.umkaGetParam(params, 1)
	res := rl.ColorBrightness(color^, factor^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_LoadTextureCubemap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	layout := cast(^rl.CubemapLayout)api.umkaGetParam(params, 1)
	res := rl.LoadTextureCubemap(image^, layout^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsWindowFocused :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowFocused()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ComputeMD5 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ComputeMD5(data^, dataSize^) 
}
				
@(export = true)
um_ExportImageToMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	fileType := cast(^cstring)api.umkaGetParam(params, 1)
	fileSize := cast(^^c.int)api.umkaGetParam(params, 2)
	res := rl.ExportImageToMemory(image^, fileType^, fileSize^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_GetCurrentMonitor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetCurrentMonitor()
}
				
@(export = true)
um_DrawTexturePro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	source := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	dest := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	origin := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	rotation := cast(^f32)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawTexturePro(texture^, source^, dest^, origin^, rotation^, tint^) 
}
				
@(export = true)
um_DrawCylinder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	radiusTop := cast(^f32)api.umkaGetParam(params, 1)
	radiusBottom := cast(^f32)api.umkaGetParam(params, 2)
	height := cast(^f32)api.umkaGetParam(params, 3)
	slices := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCylinder(position^, radiusTop^, radiusBottom^, height^, slices^, color^) 
}
				
@(export = true)
um_DrawModelWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	scale := cast(^f32)api.umkaGetParam(params, 2)
	tint := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawModelWires(model^, position^, scale^, tint^) 
}
				
@(export = true)
um_DrawCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	centerX := cast(^c.int)api.umkaGetParam(params, 0)
	centerY := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawCircle(centerX^, centerY^, radius^, color^) 
}
				
@(export = true)
um_ImageRotateCCW :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageRotateCCW(image^) 
}
				
@(export = true)
um_CodepointToUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	codepoint := cast(^rune)api.umkaGetParam(params, 0)
	utf8Size := cast(^^c.int)api.umkaGetParam(params, 1)
	res := rl.CodepointToUTF8(codepoint^, utf8Size^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawTextureNPatch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 0)
	nPatchInfo := cast(^rl.NPatchInfo)api.umkaGetParam(params, 1)
	dest := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	origin := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	rotation := cast(^f32)api.umkaGetParam(params, 4)
	tint := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawTextureNPatch(texture^, nPatchInfo^, dest^, origin^, rotation^, tint^) 
}
				
@(export = true)
um_CloseAudioDevice :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.CloseAudioDevice()
}
				
@(export = true)
um_IsWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	flags := cast(^rl.ConfigFlags)api.umkaGetParam(params, 0)
	res := rl.IsWindowState(flags^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_UnloadModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	rl.UnloadModel(model^) 
}
				
@(export = true)
um_DrawRectangleRoundedLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	roundness := cast(^f32)api.umkaGetParam(params, 1)
	segments := cast(^c.int)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawRectangleRoundedLines(rec^, roundness^, segments^, color^) 
}
				
@(export = true)
um_LoadMaterialDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.LoadMaterialDefault()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_SetAudioStreamVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	volume := cast(^f32)api.umkaGetParam(params, 1)
	rl.SetAudioStreamVolume(stream^, volume^) 
}
				
@(export = true)
um_IsWaveValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	res := rl.IsWaveValid(wave^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageResize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	newWidth := cast(^c.int)api.umkaGetParam(params, 1)
	newHeight := cast(^c.int)api.umkaGetParam(params, 2)
	rl.ImageResize(image^, newWidth^, newHeight^) 
}
				
@(export = true)
um_MemAlloc :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	size := cast(^c.uint)api.umkaGetParam(params, 0)
	res := rl.MemAlloc(size^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_WaveFormat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^^rl.Wave)api.umkaGetParam(params, 0)
	sampleRate := cast(^c.int)api.umkaGetParam(params, 1)
	sampleSize := cast(^c.int)api.umkaGetParam(params, 2)
	channels := cast(^c.int)api.umkaGetParam(params, 3)
	rl.WaveFormat(wave^, sampleRate^, sampleSize^, channels^) 
}
				
@(export = true)
um_UpdateMeshBuffer :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mesh := cast(^rl.Mesh)api.umkaGetParam(params, 0)
	index := cast(^c.int)api.umkaGetParam(params, 1)
	data := cast(^rawptr)api.umkaGetParam(params, 2)
	dataSize := cast(^c.int)api.umkaGetParam(params, 3)
	offset := cast(^c.int)api.umkaGetParam(params, 4)
	rl.UpdateMeshBuffer(mesh^, index^, data^, dataSize^, offset^) 
}
				
@(export = true)
um_SetAutomationEventBaseFrame :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	frame := cast(^c.int)api.umkaGetParam(params, 0)
	rl.SetAutomationEventBaseFrame(frame^) 
}
				
@(export = true)
um_PlaySound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	sound := cast(^rl.Sound)api.umkaGetParam(params, 0)
	rl.PlaySound(sound^) 
}
				
@(export = true)
um_IsGestureDetected :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	gesture := cast(^rl.Gesture)api.umkaGetParam(params, 0)
	res := rl.IsGestureDetected(gesture^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetWindowIcon :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	rl.SetWindowIcon(image^) 
}
				
@(export = true)
um_IsModelAnimationValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	model := cast(^rl.Model)api.umkaGetParam(params, 0)
	anim := cast(^rl.ModelAnimation)api.umkaGetParam(params, 1)
	res := rl.IsModelAnimationValid(model^, anim^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetShaderValueV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	locIndex := cast(^c.int)api.umkaGetParam(params, 1)
	value := cast(^rawptr)api.umkaGetParam(params, 2)
	uniformType := cast(^rl.ShaderUniformDataType)api.umkaGetParam(params, 3)
	count := cast(^c.int)api.umkaGetParam(params, 4)
	rl.SetShaderValueV(shader^, locIndex^, value^, uniformType^, count^) 
}
				
@(export = true)
um_DrawSplineLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	points := cast(^[^]rl.Vector2)api.umkaGetParam(params, 0)
	pointCount := cast(^c.int)api.umkaGetParam(params, 1)
	thick := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawSplineLinear(points^, pointCount^, thick^, color^) 
}
				
@(export = true)
um_DrawRectanglePro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	origin := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	rotation := cast(^f32)api.umkaGetParam(params, 2)
	color := cast(^rl.Color)api.umkaGetParam(params, 3)
	rl.DrawRectanglePro(rec^, origin^, rotation^, color^) 
}
				
@(export = true)
um_SwapScreenBuffer :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.SwapScreenBuffer()
}
				
@(export = true)
um_LoadFontFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileType := cast(^cstring)api.umkaGetParam(params, 0)
	fileData := cast(^rawptr)api.umkaGetParam(params, 1)
	dataSize := cast(^c.int)api.umkaGetParam(params, 2)
	fontSize := cast(^c.int)api.umkaGetParam(params, 3)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 4)
	codepointCount := cast(^c.int)api.umkaGetParam(params, 5)
	res := rl.LoadFontFromMemory(fileType^, fileData^, dataSize^, fontSize^, codepoints^, codepointCount^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_CameraYaw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^^rl.Camera)api.umkaGetParam(params, 0)
	angle := cast(^f32)api.umkaGetParam(params, 1)
	rotateAroundTarget := cast(^bool)api.umkaGetParam(params, 2)
	rl.CameraYaw(camera^, angle^, rotateAroundTarget^) 
}
				
@(export = true)
um_DrawCapsuleWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	slices := cast(^c.int)api.umkaGetParam(params, 3)
	rings := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCapsuleWires(startPos^, endPos^, radius^, slices^, rings^, color^) 
}
				
@(export = true)
um_TextLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	rl.TextLength(text^) 
}
				
@(export = true)
um_ExportWaveAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	wave := cast(^rl.Wave)api.umkaGetParam(params, 0)
	fileName := cast(^cstring)api.umkaGetParam(params, 1)
	res := rl.ExportWaveAsCode(wave^, fileName^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawTextCodepoint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	codepoint := cast(^rune)api.umkaGetParam(params, 1)
	position := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	fontSize := cast(^f32)api.umkaGetParam(params, 3)
	tint := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawTextCodepoint(font^, codepoint^, position^, fontSize^, tint^) 
}
				
@(export = true)
um_GetGamepadButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetGamepadButtonPressed()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRectangleGradientEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 0)
	topLeft := cast(^rl.Color)api.umkaGetParam(params, 1)
	bottomLeft := cast(^rl.Color)api.umkaGetParam(params, 2)
	topRight := cast(^rl.Color)api.umkaGetParam(params, 3)
	bottomRight := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawRectangleGradientEx(rec^, topLeft^, bottomLeft^, topRight^, bottomRight^) 
}
				
@(export = true)
um_GetCharPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetCharPressed()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_CheckCollisionPointRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	point := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	rec := cast(^rl.Rectangle)api.umkaGetParam(params, 1)
	res := rl.CheckCollisionPointRec(point^, rec^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_SetGamepadMappings :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	mappings := cast(^cstring)api.umkaGetParam(params, 0)
	rl.SetGamepadMappings(mappings^) 
}
				
@(export = true)
um_IsShaderValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	res := rl.IsShaderValid(shader^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_GetMouseX :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetMouseX()
}
				
@(export = true)
um_UnloadImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	rl.UnloadImage(image^) 
}
				
@(export = true)
um_ClearBackground :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	color := cast(^rl.Color)api.umkaGetParam(params, 0)
	rl.ClearBackground(color^) 
}
				
@(export = true)
um_IsFontValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	font := cast(^rl.Font)api.umkaGetParam(params, 0)
	res := rl.IsFontValid(font^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageBlurGaussian :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	blurSize := cast(^c.int)api.umkaGetParam(params, 1)
	rl.ImageBlurGaussian(image^, blurSize^) 
}
				
@(export = true)
um_GetWorkingDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetWorkingDirectory()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsMouseButtonUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	button := cast(^rl.MouseButton)api.umkaGetParam(params, 0)
	res := rl.IsMouseButtonUp(button^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_ImageDrawTriangleEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	dst := cast(^^rl.Image)api.umkaGetParam(params, 0)
	v1 := cast(^rl.Vector2)api.umkaGetParam(params, 1)
	v2 := cast(^rl.Vector2)api.umkaGetParam(params, 2)
	v3 := cast(^rl.Vector2)api.umkaGetParam(params, 3)
	c1 := cast(^rl.Color)api.umkaGetParam(params, 4)
	c2 := cast(^rl.Color)api.umkaGetParam(params, 5)
	c3 := cast(^rl.Color)api.umkaGetParam(params, 6)
	rl.ImageDrawTriangleEx(dst^, v1^, v2^, v3^, c1^, c2^, c3^) 
}
				
@(export = true)
um_SetMaterialTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	material := cast(^^rl.Material)api.umkaGetParam(params, 0)
	mapType := cast(^rl.MaterialMapIndex)api.umkaGetParam(params, 1)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 2)
	rl.SetMaterialTexture(material^, mapType^, texture^) 
}
				
@(export = true)
um_GetMonitorPhysicalWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	monitor := cast(^c.int)api.umkaGetParam(params, 0)
	rl.GetMonitorPhysicalWidth(monitor^) 
}
				
@(export = true)
um_ImageDither :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rBpp := cast(^c.int)api.umkaGetParam(params, 1)
	gBpp := cast(^c.int)api.umkaGetParam(params, 2)
	bBpp := cast(^c.int)api.umkaGetParam(params, 3)
	aBpp := cast(^c.int)api.umkaGetParam(params, 4)
	rl.ImageDither(image^, rBpp^, gBpp^, bBpp^, aBpp^) 
}
				
@(export = true)
um_LoadRandomSequence :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	count := cast(^c.uint)api.umkaGetParam(params, 0)
	min := cast(^c.int)api.umkaGetParam(params, 1)
	max := cast(^c.int)api.umkaGetParam(params, 2)
	rl.LoadRandomSequence(count^, min^, max^) 
}
				
@(export = true)
um_GetMouseWheelMove :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetMouseWheelMove()
	api.umkaGetResult(params, result).realVal = cast(f64)res
}
				
@(export = true)
um_LoadFontFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^rl.Image)api.umkaGetParam(params, 0)
	key := cast(^rl.Color)api.umkaGetParam(params, 1)
	firstChar := cast(^rune)api.umkaGetParam(params, 2)
	res := rl.LoadFontFromImage(image^, key^, firstChar^ )
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	center := cast(^rl.Vector2)api.umkaGetParam(params, 0)
	sides := cast(^c.int)api.umkaGetParam(params, 1)
	radius := cast(^f32)api.umkaGetParam(params, 2)
	rotation := cast(^f32)api.umkaGetParam(params, 3)
	color := cast(^rl.Color)api.umkaGetParam(params, 4)
	rl.DrawPoly(center^, sides^, radius^, rotation^, color^) 
}
				
@(export = true)
um_GetWindowPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetWindowPosition()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_StopAutomationEventRecording :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.StopAutomationEventRecording()
}
				
@(export = true)
um_EndMode2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.EndMode2D()
}
				
@(export = true)
um_SetShaderValueMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	shader := cast(^rl.Shader)api.umkaGetParam(params, 0)
	locIndex := cast(^c.int)api.umkaGetParam(params, 1)
	mat := cast(^rl.Matrix)api.umkaGetParam(params, 2)
	rl.SetShaderValueMatrix(shader^, locIndex^, mat^) 
}
				
@(export = true)
um_LoadFontData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileData := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	fontSize := cast(^c.int)api.umkaGetParam(params, 2)
	codepoints := cast(^[^]rune)api.umkaGetParam(params, 3)
	codepointCount := cast(^c.int)api.umkaGetParam(params, 4)
	type := cast(^rl.FontType)api.umkaGetParam(params, 5)
	rl.LoadFontData(fileData^, dataSize^, fontSize^, codepoints^, codepointCount^, type^) 
}
				
@(export = true)
um_GetKeyPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetKeyPressed()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_DrawRay :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	ray := cast(^rl.Ray)api.umkaGetParam(params, 0)
	color := cast(^rl.Color)api.umkaGetParam(params, 1)
	rl.DrawRay(ray^, color^) 
}
				
@(export = true)
um_IsAudioStreamProcessed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	stream := cast(^rl.AudioStream)api.umkaGetParam(params, 0)
	res := rl.IsAudioStreamProcessed(stream^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_DrawCylinderWiresEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	startPos := cast(^rl.Vector3)api.umkaGetParam(params, 0)
	endPos := cast(^rl.Vector3)api.umkaGetParam(params, 1)
	startRadius := cast(^f32)api.umkaGetParam(params, 2)
	endRadius := cast(^f32)api.umkaGetParam(params, 3)
	sides := cast(^c.int)api.umkaGetParam(params, 4)
	color := cast(^rl.Color)api.umkaGetParam(params, 5)
	rl.DrawCylinderWiresEx(startPos^, endPos^, startRadius^, endRadius^, sides^, color^) 
}
				
@(export = true)
um_UnloadFontData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	glyphs := cast(^[^]rl.GlyphInfo)api.umkaGetParam(params, 0)
	glyphCount := cast(^c.int)api.umkaGetParam(params, 1)
	rl.UnloadFontData(glyphs^, glyphCount^) 
}
				
@(export = true)
um_CompressData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	data := cast(^rawptr)api.umkaGetParam(params, 0)
	dataSize := cast(^c.int)api.umkaGetParam(params, 1)
	compDataSize := cast(^^c.int)api.umkaGetParam(params, 2)
	rl.CompressData(data^, dataSize^, compDataSize^) 
}
				
@(export = true)
um_DrawBillboardPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	camera := cast(^rl.Camera)api.umkaGetParam(params, 0)
	texture := cast(^rl.Texture2D)api.umkaGetParam(params, 1)
	source := cast(^rl.Rectangle)api.umkaGetParam(params, 2)
	position := cast(^rl.Vector3)api.umkaGetParam(params, 3)
	up := cast(^rl.Vector3)api.umkaGetParam(params, 4)
	size := cast(^rl.Vector2)api.umkaGetParam(params, 5)
	origin := cast(^rl.Vector2)api.umkaGetParam(params, 6)
	rotation := cast(^f32)api.umkaGetParam(params, 7)
	tint := cast(^rl.Color)api.umkaGetParam(params, 8)
	rl.DrawBillboardPro(camera^, texture^, source^, position^, up^, size^, origin^, rotation^, tint^) 
}
				
@(export = true)
um_ImageColorGrayscale :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	image := cast(^^rl.Image)api.umkaGetParam(params, 0)
	rl.ImageColorGrayscale(image^) 
}
				
@(export = true)
um_GetTouchX :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	rl.GetTouchX()
}
				
@(export = true)
um_GetFontDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.GetFontDefault()
	api.umkaGetResult(params, result).ptrVal = cast(rawptr)&res
}
				
@(export = true)
um_IsRenderTextureValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	target := cast(^rl.RenderTexture2D)api.umkaGetParam(params, 0)
	res := rl.IsRenderTextureValid(target^ )
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_TextInsert :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	text := cast(^cstring)api.umkaGetParam(params, 0)
	insert := cast(^cstring)api.umkaGetParam(params, 1)
	position := cast(^c.int)api.umkaGetParam(params, 2)
	rl.TextInsert(text^, insert^, position^) 
}
				
@(export = true)
um_IsWindowFullscreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	res := rl.IsWindowFullscreen()
	api.umkaGetResult(params, result).intVal = cast(i64)res
}
				
@(export = true)
um_LoadFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

instance := umka.get_instance(result)
api := umka.get_api(instance)
	fileName := cast(^cstring)api.umkaGetParam(params, 0)
	rl.LoadFileText(fileName^) 
}
				
