//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package raylib_bindings

import rl "vendor:raylib"
import "core:c"
import "core:fmt"
import "base:runtime"
import "../../umka"
umka_TextToLower :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToLower(text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_TextToSnake :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToSnake(text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCameraRight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	res := rl.GetCameraRight(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ExportWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportWave(wave^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_UnloadTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	rl.UnloadTexture(texture^) 
}
				
umka_UnloadWaveSamples :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	samples := cast(^[^]f32)umka.GetParam(params, 0)
	rl.UnloadWaveSamples(samples^) 
}
				
umka_MemRealloc :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ptr := cast(^rawptr)umka.GetParam(params, 0)
	size := cast(^c.uint)umka.GetParam(params, 1)
	res := rl.MemRealloc(ptr^, size^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawBillboardRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera)umka.GetParam(params, 0)
	texture := cast(^rl.Texture2D)umka.GetParam(params, 1)
	source := cast(^rl.Rectangle)umka.GetParam(params, 2)
	position := cast(^rl.Vector3)umka.GetParam(params, 3)
	size := cast(^rl.Vector2)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawBillboardRec(camera^, texture^, source^, position^, size^, tint^) 
}
				
umka_DrawModelWiresEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)umka.GetParam(params, 2)
	rotationAngle := cast(^f32)umka.GetParam(params, 3)
	scale := cast(^rl.Vector3)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawModelWiresEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
umka_UpdateCameraPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	movement := cast(^rl.Vector3)umka.GetParam(params, 1)
	rotation := cast(^rl.Vector3)umka.GetParam(params, 2)
	zoom := cast(^f32)umka.GetParam(params, 3)
	rl.UpdateCameraPro(camera^, movement^, rotation^, zoom^) 
}
				
umka_SetAudioStreamPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	pitch := cast(^f32)umka.GetParam(params, 1)
	rl.SetAudioStreamPitch(stream^, pitch^) 
}
				
umka_GetScreenToWorldRay :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	camera := cast(^rl.Camera)umka.GetParam(params, 1)
	res := rl.GetScreenToWorldRay(position^, camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenImagePerlinNoise :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	offsetX := cast(^c.int)umka.GetParam(params, 2)
	offsetY := cast(^c.int)umka.GetParam(params, 3)
	scale := cast(^f32)umka.GetParam(params, 4)
	res := rl.GenImagePerlinNoise(width^, height^, offsetX^, offsetY^, scale^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawBillboard :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera)umka.GetParam(params, 0)
	texture := cast(^rl.Texture2D)umka.GetParam(params, 1)
	position := cast(^rl.Vector3)umka.GetParam(params, 2)
	scale := cast(^f32)umka.GetParam(params, 3)
	tint := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawBillboard(camera^, texture^, position^, scale^, tint^) 
}
				
umka_PlayAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	rl.PlayAudioStream(stream^) 
}
				
umka_CheckCollisionCircles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius1 := cast(^f32)umka.GetParam(params, 1)
	center2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	radius2 := cast(^f32)umka.GetParam(params, 3)
	res := rl.CheckCollisionCircles(center1^, radius1^, center2^, radius2^ )
	result.intVal = cast(i64)res
}
				
umka_SetMouseCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	cursor := cast(^rl.MouseCursor)umka.GetParam(params, 0)
	rl.SetMouseCursor(cursor^) 
}
				
umka_ResumeAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	rl.ResumeAudioStream(stream^) 
}
				
umka_TextToUpper :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToUpper(text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawCircleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawCircleV(center^, radius^, color^) 
}
				
umka_EncodeDataBase64 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	outputSize := cast(^^c.int)umka.GetParam(params, 2)
	rl.EncodeDataBase64(data^, dataSize^, outputSize^) 
}
				
umka_DrawCylinderEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector3)umka.GetParam(params, 1)
	startRadius := cast(^f32)umka.GetParam(params, 2)
	endRadius := cast(^f32)umka.GetParam(params, 3)
	sides := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCylinderEx(startPos^, endPos^, startRadius^, endRadius^, sides^, color^) 
}
				
umka_GetGestureDetected :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGestureDetected()
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionCircleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 2)
	res := rl.CheckCollisionCircleRec(center^, radius^, rec^ )
	result.intVal = cast(i64)res
}
				
umka_IsGamepadAvailable :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	res := rl.IsGamepadAvailable(gamepad^ )
	result.intVal = cast(i64)res
}
				
umka_LoadDirectoryFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dirPath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadDirectoryFiles(dirPath^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsFileExtension :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	ext := cast(^cstring)umka.GetParam(params, 1)
	res := rl.IsFileExtension(fileName^, ext^ )
	result.intVal = cast(i64)res
}
				
umka_IsTextureValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	res := rl.IsTextureValid(texture^ )
	result.intVal = cast(i64)res
}
				
umka_DrawCapsule :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector3)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	slices := cast(^c.int)umka.GetParam(params, 3)
	rings := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCapsule(startPos^, endPos^, radius^, slices^, rings^, color^) 
}
				
umka_TextToFloat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToFloat(text^ )
	result.realVal = cast(f64)res
}
				
umka_IsGamepadButtonDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	button := cast(^rl.GamepadButton)umka.GetParam(params, 1)
	res := rl.IsGamepadButtonDown(gamepad^, button^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawPixel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	posX := cast(^c.int)umka.GetParam(params, 1)
	posY := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawPixel(dst^, posX^, posY^, color^) 
}
				
umka_LoadSoundAlias :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	source := cast(^rl.Sound)umka.GetParam(params, 0)
	res := rl.LoadSoundAlias(source^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_PauseSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.PauseSound(sound^) 
}
				
umka_PauseMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.PauseMusicStream(music^) 
}
				
umka_BeginTextureMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	target := cast(^rl.RenderTexture2D)umka.GetParam(params, 0)
	rl.BeginTextureMode(target^) 
}
				
umka_DrawTextCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	codepoints := cast(^[^]rune)umka.GetParam(params, 1)
	codepointCount := cast(^c.int)umka.GetParam(params, 2)
	position := cast(^rl.Vector2)umka.GetParam(params, 3)
	fontSize := cast(^f32)umka.GetParam(params, 4)
	spacing := cast(^f32)umka.GetParam(params, 5)
	tint := cast(^rl.Color)umka.GetParam(params, 6)
	rl.DrawTextCodepoints(font^, codepoints^, codepointCount^, position^, fontSize^, spacing^, tint^) 
}
				
umka_GetColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	hexValue := cast(^c.uint)umka.GetParam(params, 0)
	res := rl.GetColor(hexValue^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_TextAppend :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^[^]byte)umka.GetParam(params, 0)
	append := cast(^cstring)umka.GetParam(params, 1)
	position := cast(^^c.int)umka.GetParam(params, 2)
	rl.TextAppend(text^, append^, position^) 
}
				
umka_SetMasterVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	volume := cast(^f32)umka.GetParam(params, 0)
	rl.SetMasterVolume(volume^) 
}
				
umka_UnloadFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^[^]byte)umka.GetParam(params, 0)
	rl.UnloadFileData(data^) 
}
				
umka_EnableCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EnableCursor()
}
				
umka_DrawCircle3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector3)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)umka.GetParam(params, 2)
	rotationAngle := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawCircle3D(center^, radius^, rotationAxis^, rotationAngle^, color^) 
}
				
umka_DrawSplineSegmentLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineSegmentLinear(p1^, p2^, thick^, color^) 
}
				
umka_GenMeshKnot :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	size := cast(^f32)umka.GetParam(params, 1)
	radSeg := cast(^c.int)umka.GetParam(params, 2)
	sides := cast(^c.int)umka.GetParam(params, 3)
	res := rl.GenMeshKnot(radius^, size^, radSeg^, sides^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageAlphaClear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	threshold := cast(^f32)umka.GetParam(params, 2)
	rl.ImageAlphaClear(image^, color^, threshold^) 
}
				
umka_UnloadMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	rl.UnloadMesh(mesh^) 
}
				
umka_GetClipboardImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetClipboardImage()
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageColorInvert :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageColorInvert(image^) 
}
				
umka_ColorContrast :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	contrast := cast(^f32)umka.GetParam(params, 1)
	res := rl.ColorContrast(color^, contrast^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsAudioDeviceReady :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsAudioDeviceReady()
	result.intVal = cast(i64)res
}
				
umka_GenMeshCone :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	height := cast(^f32)umka.GetParam(params, 1)
	slices := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GenMeshCone(radius^, height^, slices^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	scale := cast(^f32)umka.GetParam(params, 2)
	tint := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawModel(model^, position^, scale^, tint^) 
}
				
umka_EnableEventWaiting :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EnableEventWaiting()
}
				
umka_ImageDrawLineEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	start := cast(^rl.Vector2)umka.GetParam(params, 1)
	end := cast(^rl.Vector2)umka.GetParam(params, 2)
	thick := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDrawLineEx(dst^, start^, end^, thick^, color^) 
}
				
umka_SaveFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	data := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	res := rl.SaveFileData(fileName^, data^, dataSize^ )
	result.intVal = cast(i64)res
}
				
umka_CameraMoveUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	distance := cast(^f32)umka.GetParam(params, 1)
	rl.CameraMoveUp(camera^, distance^) 
}
				
umka_DrawSplineSegmentCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	thick := cast(^f32)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawSplineSegmentCatmullRom(p1^, p2^, p3^, p4^, thick^, color^) 
}
				
umka_DrawTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	v1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	v2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	v3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawTriangle(v1^, v2^, v3^, color^) 
}
				
umka_GetGlyphAtlasRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	codepoint := cast(^rune)umka.GetParam(params, 1)
	res := rl.GetGlyphAtlasRec(font^, codepoint^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionPointCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	point := cast(^rl.Vector2)umka.GetParam(params, 0)
	center := cast(^rl.Vector2)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	res := rl.CheckCollisionPointCircle(point^, center^, radius^ )
	result.intVal = cast(i64)res
}
				
umka_EndDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndDrawing()
}
				
umka_MaximizeWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.MaximizeWindow()
}
				
umka_SetShaderValue :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	locIndex := cast(^c.int)umka.GetParam(params, 1)
	value := cast(^rawptr)umka.GetParam(params, 2)
	uniformType := cast(^rl.ShaderUniformDataType)umka.GetParam(params, 3)
	rl.SetShaderValue(shader^, locIndex^, value^, uniformType^) 
}
				
umka_IsGamepadButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	button := cast(^rl.GamepadButton)umka.GetParam(params, 1)
	res := rl.IsGamepadButtonPressed(gamepad^, button^ )
	result.intVal = cast(i64)res
}
				
umka_ClearWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	flags := cast(^rl.ConfigFlags)umka.GetParam(params, 0)
	rl.ClearWindowState(flags^) 
}
				
umka_DrawCircleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerX := cast(^c.int)umka.GetParam(params, 0)
	centerY := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawCircleLines(centerX^, centerY^, radius^, color^) 
}
				
umka_ImageFormat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	newFormat := cast(^rl.PixelFormat)umka.GetParam(params, 1)
	rl.ImageFormat(image^, newFormat^) 
}
				
umka_OpenURL :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	url := cast(^cstring)umka.GetParam(params, 0)
	rl.OpenURL(url^) 
}
				
umka_GenImageFontAtlas :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	glyphs := cast(^[^]rl.GlyphInfo)umka.GetParam(params, 0)
	glyphRecs := cast(^^[^]rl.Rectangle)umka.GetParam(params, 1)
	codepointCount := cast(^c.int)umka.GetParam(params, 2)
	fontSize := cast(^c.int)umka.GetParam(params, 3)
	padding := cast(^c.int)umka.GetParam(params, 4)
	packMethod := cast(^c.int)umka.GetParam(params, 5)
	res := rl.GenImageFontAtlas(glyphs^, glyphRecs^, codepointCount^, fontSize^, padding^, packMethod^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetClipboardText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetClipboardText()
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetRandomValue :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	min := cast(^c.int)umka.GetParam(params, 0)
	max := cast(^c.int)umka.GetParam(params, 1)
	rl.GetRandomValue(min^, max^) 
}
				
umka_GetFileName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	filePath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.GetFileName(filePath^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageFromChannel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	selectedChannel := cast(^c.int)umka.GetParam(params, 1)
	res := rl.ImageFromChannel(image^, selectedChannel^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetGestureDragAngle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGestureDragAngle()
	result.realVal = cast(f64)res
}
				
umka_DrawPolyLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	sides := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	rotation := cast(^f32)umka.GetParam(params, 3)
	lineThick := cast(^f32)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawPolyLinesEx(center^, sides^, radius^, rotation^, lineThick^, color^) 
}
				
umka_DrawPixelV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.DrawPixelV(position^, color^) 
}
				
umka_IsKeyPressedRepeat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	res := rl.IsKeyPressedRepeat(key^ )
	result.intVal = cast(i64)res
}
				
umka_UnloadUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^[^]byte)umka.GetParam(params, 0)
	rl.UnloadUTF8(text^) 
}
				
umka_UnloadImagePalette :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	colors := cast(^[^]rl.Color)umka.GetParam(params, 0)
	rl.UnloadImagePalette(colors^) 
}
				
umka_UpdateAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	data := cast(^rawptr)umka.GetParam(params, 1)
	frameCount := cast(^c.int)umka.GetParam(params, 2)
	rl.UpdateAudioStream(stream^, data^, frameCount^) 
}
				
umka_IsKeyUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	res := rl.IsKeyUp(key^ )
	result.intVal = cast(i64)res
}
				
umka_GenMeshTangents :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^^rl.Mesh)umka.GetParam(params, 0)
	rl.GenMeshTangents(mesh^) 
}
				
umka_UnloadFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^[^]byte)umka.GetParam(params, 0)
	rl.UnloadFileText(text^) 
}
				
umka_SetMouseScale :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	scaleX := cast(^f32)umka.GetParam(params, 0)
	scaleY := cast(^f32)umka.GetParam(params, 1)
	rl.SetMouseScale(scaleX^, scaleY^) 
}
				
umka_ImageDrawRectangleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.ImageDrawRectangleRec(dst^, rec^, color^) 
}
				
umka_UnloadImageColors :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	colors := cast(^[^]rl.Color)umka.GetParam(params, 0)
	rl.UnloadImageColors(colors^) 
}
				
umka_DirectoryExists :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dirPath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.DirectoryExists(dirPath^ )
	result.intVal = cast(i64)res
}
				
umka_DecodeDataBase64 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	outputSize := cast(^^c.int)umka.GetParam(params, 1)
	rl.DecodeDataBase64(data^, outputSize^) 
}
				
umka_DrawTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	text := cast(^cstring)umka.GetParam(params, 1)
	position := cast(^rl.Vector2)umka.GetParam(params, 2)
	fontSize := cast(^f32)umka.GetParam(params, 3)
	spacing := cast(^f32)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawTextEx(font^, text^, position^, fontSize^, spacing^, tint^) 
}
				
umka_DrawEllipseLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerX := cast(^c.int)umka.GetParam(params, 0)
	centerY := cast(^c.int)umka.GetParam(params, 1)
	radiusH := cast(^f32)umka.GetParam(params, 2)
	radiusV := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawEllipseLines(centerX^, centerY^, radiusH^, radiusV^, color^) 
}
				
umka_GetGestureHoldDuration :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGestureHoldDuration()
	result.realVal = cast(f64)res
}
				
umka_GetWindowScaleDPI :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetWindowScaleDPI()
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionBoxes :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	box1 := cast(^rl.BoundingBox)umka.GetParam(params, 0)
	box2 := cast(^rl.BoundingBox)umka.GetParam(params, 1)
	res := rl.CheckCollisionBoxes(box1^, box2^ )
	result.intVal = cast(i64)res
}
				
umka_PlayMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.PlayMusicStream(music^) 
}
				
umka_GetTouchPointCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetTouchPointCount()
}
				
umka_ColorToHSV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	res := rl.ColorToHSV(color^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadWaveFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileType := cast(^cstring)umka.GetParam(params, 0)
	fileData := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	res := rl.LoadWaveFromMemory(fileType^, fileData^, dataSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionBoxSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	box := cast(^rl.BoundingBox)umka.GetParam(params, 0)
	center := cast(^rl.Vector3)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	res := rl.CheckCollisionBoxSphere(box^, center^, radius^ )
	result.intVal = cast(i64)res
}
				
umka_SetSoundVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	volume := cast(^f32)umka.GetParam(params, 1)
	rl.SetSoundVolume(sound^, volume^) 
}
				
umka_IsGamepadButtonReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	button := cast(^rl.GamepadButton)umka.GetParam(params, 1)
	res := rl.IsGamepadButtonReleased(gamepad^, button^ )
	result.intVal = cast(i64)res
}
				
umka_SetGesturesEnabled :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	flags := cast(^rl.Gestures)umka.GetParam(params, 0)
	rl.SetGesturesEnabled(flags^) 
}
				
umka_StopAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	rl.StopAudioStream(stream^) 
}
				
umka_ImageResizeNN :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	newWidth := cast(^c.int)umka.GetParam(params, 1)
	newHeight := cast(^c.int)umka.GetParam(params, 2)
	rl.ImageResizeNN(image^, newWidth^, newHeight^) 
}
				
umka_Fade :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	alpha := cast(^f32)umka.GetParam(params, 1)
	res := rl.Fade(color^, alpha^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetTextLineSpacing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	spacing := cast(^c.int)umka.GetParam(params, 0)
	rl.SetTextLineSpacing(spacing^) 
}
				
umka_BeginBlendMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mode := cast(^rl.BlendMode)umka.GetParam(params, 0)
	rl.BeginBlendMode(mode^) 
}
				
umka_GetGamepadAxisMovement :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	axis := cast(^rl.GamepadAxis)umka.GetParam(params, 1)
	res := rl.GetGamepadAxisMovement(gamepad^, axis^ )
	result.realVal = cast(f64)res
}
				
umka_DrawPlane :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	size := cast(^rl.Vector2)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawPlane(centerPos^, size^, color^) 
}
				
umka_GetRayCollisionBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	box := cast(^rl.BoundingBox)umka.GetParam(params, 1)
	res := rl.GetRayCollisionBox(ray^, box^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenImageColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	res := rl.GenImageColor(width^, height^, color^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetRayCollisionTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	p1 := cast(^rl.Vector3)umka.GetParam(params, 1)
	p2 := cast(^rl.Vector3)umka.GetParam(params, 2)
	p3 := cast(^rl.Vector3)umka.GetParam(params, 3)
	res := rl.GetRayCollisionTriangle(ray^, p1^, p2^, p3^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawRectangle(posX^, posY^, width^, height^, color^) 
}
				
umka_ImageDrawRectangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 1)
	thick := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawRectangleLines(dst^, rec^, thick^, color^) 
}
				
umka_ComputeCRC32 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	rl.ComputeCRC32(data^, dataSize^) 
}
				
umka_DrawLineV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector2)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector2)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawLineV(startPos^, endPos^, color^) 
}
				
umka_ColorTint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	tint := cast(^rl.Color)umka.GetParam(params, 1)
	res := rl.ColorTint(color^, tint^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_MeasureTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	text := cast(^cstring)umka.GetParam(params, 1)
	fontSize := cast(^f32)umka.GetParam(params, 2)
	spacing := cast(^f32)umka.GetParam(params, 3)
	res := rl.MeasureTextEx(font^, text^, fontSize^, spacing^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionPointPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	point := cast(^rl.Vector2)umka.GetParam(params, 0)
	points := cast(^[^]rl.Vector2)umka.GetParam(params, 1)
	pointCount := cast(^c.int)umka.GetParam(params, 2)
	res := rl.CheckCollisionPointPoly(point^, points^, pointCount^ )
	result.intVal = cast(i64)res
}
				
umka_BeginDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.BeginDrawing()
}
				
umka_ComputeSHA1 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	rl.ComputeSHA1(data^, dataSize^) 
}
				
umka_TextSubtext :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	position := cast(^c.int)umka.GetParam(params, 1)
	length := cast(^c.int)umka.GetParam(params, 2)
	res := rl.TextSubtext(text^, position^, length^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadFont :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadFont(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetRayCollisionQuad :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	p1 := cast(^rl.Vector3)umka.GetParam(params, 1)
	p2 := cast(^rl.Vector3)umka.GetParam(params, 2)
	p3 := cast(^rl.Vector3)umka.GetParam(params, 3)
	p4 := cast(^rl.Vector3)umka.GetParam(params, 4)
	res := rl.GetRayCollisionQuad(ray^, p1^, p2^, p3^, p4^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCameraMatrix2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera2D)umka.GetParam(params, 0)
	res := rl.GetCameraMatrix2D(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UpdateTextureRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 1)
	pixels := cast(^rawptr)umka.GetParam(params, 2)
	rl.UpdateTextureRec(texture^, rec^, pixels^) 
}
				
umka_TextReplace :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^[^]byte)umka.GetParam(params, 0)
	replace := cast(^cstring)umka.GetParam(params, 1)
	by := cast(^cstring)umka.GetParam(params, 2)
	rl.TextReplace(text^, replace^, by^) 
}
				
umka_GenImageWhiteNoise :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	factor := cast(^f32)umka.GetParam(params, 2)
	res := rl.GenImageWhiteNoise(width^, height^, factor^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UpdateCamera :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	mode := cast(^rl.CameraMode)umka.GetParam(params, 1)
	rl.UpdateCamera(camera^, mode^) 
}
				
umka_UpdateSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	data := cast(^rawptr)umka.GetParam(params, 1)
	frameCount := cast(^c.int)umka.GetParam(params, 2)
	rl.UpdateSound(sound^, data^, frameCount^) 
}
				
umka_GetDirectoryPath :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	filePath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.GetDirectoryPath(filePath^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetMonitorCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetMonitorCount()
}
				
umka_StopMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.StopMusicStream(music^) 
}
				
umka_ShowCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.ShowCursor()
}
				
umka_LoadUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	codepoints := cast(^[^]rune)umka.GetParam(params, 0)
	length := cast(^c.int)umka.GetParam(params, 1)
	rl.LoadUTF8(codepoints^, length^) 
}
				
umka_GetMasterVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetMasterVolume()
	result.realVal = cast(f64)res
}
				
umka_IsKeyPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	res := rl.IsKeyPressed(key^ )
	result.intVal = cast(i64)res
}
				
umka_BeginMode2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera2D)umka.GetParam(params, 0)
	rl.BeginMode2D(camera^) 
}
				
umka_TextToInteger :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	rl.TextToInteger(text^) 
}
				
umka_LoadModelAnimations :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	animCount := cast(^^c.int)umka.GetParam(params, 1)
	rl.LoadModelAnimations(fileName^, animCount^) 
}
				
umka_IsMusicValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	res := rl.IsMusicValid(music^ )
	result.intVal = cast(i64)res
}
				
umka_BeginShaderMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	rl.BeginShaderMode(shader^) 
}
				
umka_LoadWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadWave(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadShader :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	vsFileName := cast(^cstring)umka.GetParam(params, 0)
	fsFileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.LoadShader(vsFileName^, fsFileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsMusicStreamPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	res := rl.IsMusicStreamPlaying(music^ )
	result.intVal = cast(i64)res
}
				
umka_StopSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.StopSound(sound^) 
}
				
umka_GetCameraForward :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	res := rl.GetCameraForward(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetSplinePointBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	t := cast(^f32)umka.GetParam(params, 4)
	res := rl.GetSplinePointBasis(p1^, p2^, p3^, p4^, t^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ResumeMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.ResumeMusicStream(music^) 
}
				
umka_DrawLineBezier :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector2)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector2)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawLineBezier(startPos^, endPos^, thick^, color^) 
}
				
umka_DisableEventWaiting :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.DisableEventWaiting()
}
				
umka_ImageDraw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	src := cast(^rl.Image)umka.GetParam(params, 1)
	srcRec := cast(^rl.Rectangle)umka.GetParam(params, 2)
	dstRec := cast(^rl.Rectangle)umka.GetParam(params, 3)
	tint := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDraw(dst^, src^, srcRec^, dstRec^, tint^) 
}
				
umka_WindowShouldClose :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.WindowShouldClose()
	result.intVal = cast(i64)res
}
				
umka_ImageText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	fontSize := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	res := rl.ImageText(text^, fontSize^, color^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRingLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	innerRadius := cast(^f32)umka.GetParam(params, 1)
	outerRadius := cast(^f32)umka.GetParam(params, 2)
	startAngle := cast(^f32)umka.GetParam(params, 3)
	endAngle := cast(^f32)umka.GetParam(params, 4)
	segments := cast(^c.int)umka.GetParam(params, 5)
	color := cast(^rl.Color)umka.GetParam(params, 6)
	rl.DrawRingLines(center^, innerRadius^, outerRadius^, startAngle^, endAngle^, segments^, color^) 
}
				
umka_ImageTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	text := cast(^cstring)umka.GetParam(params, 1)
	fontSize := cast(^f32)umka.GetParam(params, 2)
	spacing := cast(^f32)umka.GetParam(params, 3)
	tint := cast(^rl.Color)umka.GetParam(params, 4)
	res := rl.ImageTextEx(font^, text^, fontSize^, spacing^, tint^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ExportMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportMesh(mesh^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_SetSoundPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	pan := cast(^f32)umka.GetParam(params, 1)
	rl.SetSoundPan(sound^, pan^) 
}
				
umka_CheckCollisionRecs :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec1 := cast(^rl.Rectangle)umka.GetParam(params, 0)
	rec2 := cast(^rl.Rectangle)umka.GetParam(params, 1)
	res := rl.CheckCollisionRecs(rec1^, rec2^ )
	result.intVal = cast(i64)res
}
				
umka_UnloadAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	rl.UnloadAudioStream(stream^) 
}
				
umka_GenMeshTorus :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	size := cast(^f32)umka.GetParam(params, 1)
	radSeg := cast(^c.int)umka.GetParam(params, 2)
	sides := cast(^c.int)umka.GetParam(params, 3)
	res := rl.GenMeshTorus(radius^, size^, radSeg^, sides^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ColorToInt :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	rl.ColorToInt(color^) 
}
				
umka_ImageDrawText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	text := cast(^cstring)umka.GetParam(params, 1)
	posX := cast(^c.int)umka.GetParam(params, 2)
	posY := cast(^c.int)umka.GetParam(params, 3)
	fontSize := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.ImageDrawText(dst^, text^, posX^, posY^, fontSize^, color^) 
}
				
umka_GetRenderWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetRenderWidth()
}
				
umka_GenImageGradientRadial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	density := cast(^f32)umka.GetParam(params, 2)
	inner := cast(^rl.Color)umka.GetParam(params, 3)
	outer := cast(^rl.Color)umka.GetParam(params, 4)
	res := rl.GenImageGradientRadial(width^, height^, density^, inner^, outer^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetSplinePointBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	c2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	c3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	t := cast(^f32)umka.GetParam(params, 4)
	res := rl.GetSplinePointBezierCubic(p1^, c2^, c3^, p4^, t^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawCircleLinesV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawCircleLinesV(center^, radius^, color^) 
}
				
umka_DrawModelPointsEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)umka.GetParam(params, 2)
	rotationAngle := cast(^f32)umka.GetParam(params, 3)
	scale := cast(^rl.Vector3)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawModelPointsEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
umka_DrawTriangleStrip3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector3)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawTriangleStrip3D(points^, pointCount^, color^) 
}
				
umka_SeekMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	position := cast(^f32)umka.GetParam(params, 1)
	rl.SeekMusicStream(music^, position^) 
}
				
umka_DrawRectangleLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	lineThick := cast(^f32)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawRectangleLinesEx(rec^, lineThick^, color^) 
}
				
umka_ImageDrawTriangleStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	points := cast(^[^]rl.Vector2)umka.GetParam(params, 1)
	pointCount := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawTriangleStrip(dst^, points^, pointCount^, color^) 
}
				
umka_IsWindowResized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowResized()
	result.intVal = cast(i64)res
}
				
umka_SetConfigFlags :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	flags := cast(^rl.ConfigFlags)umka.GetParam(params, 0)
	rl.SetConfigFlags(flags^) 
}
				
umka_DrawLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPosX := cast(^c.int)umka.GetParam(params, 0)
	startPosY := cast(^c.int)umka.GetParam(params, 1)
	endPosX := cast(^c.int)umka.GetParam(params, 2)
	endPosY := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawLine(startPosX^, startPosY^, endPosX^, endPosY^, color^) 
}
				
umka_GetCameraMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera)umka.GetParam(params, 0)
	res := rl.GetCameraMatrix(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawSphereEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	rings := cast(^c.int)umka.GetParam(params, 2)
	slices := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawSphereEx(centerPos^, radius^, rings^, slices^, color^) 
}
				
umka_CheckCollisionCircleLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	p1 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 3)
	res := rl.CheckCollisionCircleLine(center^, radius^, p1^, p2^ )
	result.intVal = cast(i64)res
}
				
umka_GetShaderLocation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	uniformName := cast(^cstring)umka.GetParam(params, 1)
	rl.GetShaderLocation(shader^, uniformName^) 
}
				
umka_DrawRectangleGradientV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	top := cast(^rl.Color)umka.GetParam(params, 4)
	bottom := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawRectangleGradientV(posX^, posY^, width^, height^, top^, bottom^) 
}
				
umka_UnloadSoundAlias :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	alias := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.UnloadSoundAlias(alias^) 
}
				
umka_GetScreenToWorld2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	camera := cast(^rl.Camera2D)umka.GetParam(params, 1)
	res := rl.GetScreenToWorld2D(position^, camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_MakeDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dirPath := cast(^cstring)umka.GetParam(params, 0)
	rl.MakeDirectory(dirPath^) 
}
				
umka_TextIsEqual :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text1 := cast(^cstring)umka.GetParam(params, 0)
	text2 := cast(^cstring)umka.GetParam(params, 1)
	res := rl.TextIsEqual(text1^, text2^ )
	result.intVal = cast(i64)res
}
				
umka_GetGestureDragVector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGestureDragVector()
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetAudioStreamBufferSizeDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	size := cast(^c.int)umka.GetParam(params, 0)
	rl.SetAudioStreamBufferSizeDefault(size^) 
}
				
umka_GetFileExtension :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.GetFileExtension(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadDirectoryFilesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	basePath := cast(^cstring)umka.GetParam(params, 0)
	filter := cast(^cstring)umka.GetParam(params, 1)
	scanSubdirs := cast(^bool)umka.GetParam(params, 2)
	res := rl.LoadDirectoryFilesEx(basePath^, filter^, scanSubdirs^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageRotate :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	degrees := cast(^c.int)umka.GetParam(params, 1)
	rl.ImageRotate(image^, degrees^) 
}
				
umka_SetMusicPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	pitch := cast(^f32)umka.GetParam(params, 1)
	rl.SetMusicPitch(music^, pitch^) 
}
				
umka_GetGamepadAxisCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	rl.GetGamepadAxisCount(gamepad^) 
}
				
umka_DrawTriangleStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawTriangleStrip(points^, pointCount^, color^) 
}
				
umka_ImageClearBackground :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.ImageClearBackground(dst^, color^) 
}
				
umka_UnloadMaterial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	material := cast(^rl.Material)umka.GetParam(params, 0)
	rl.UnloadMaterial(material^) 
}
				
umka_DrawRectangleRounded :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	roundness := cast(^f32)umka.GetParam(params, 1)
	segments := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawRectangleRounded(rec^, roundness^, segments^, color^) 
}
				
umka_GetScreenHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetScreenHeight()
}
				
umka_DrawSplineCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineCatmullRom(points^, pointCount^, thick^, color^) 
}
				
umka_HideCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.HideCursor()
}
				
umka_LoadCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	count := cast(^^c.int)umka.GetParam(params, 1)
	rl.LoadCodepoints(text^, count^) 
}
				
umka_CameraMoveForward :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	distance := cast(^f32)umka.GetParam(params, 1)
	moveInWorldPlane := cast(^bool)umka.GetParam(params, 2)
	rl.CameraMoveForward(camera^, distance^, moveInWorldPlane^) 
}
				
umka_PauseAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	rl.PauseAudioStream(stream^) 
}
				
umka_ImageDrawCircleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	center := cast(^rl.Vector2)umka.GetParam(params, 1)
	radius := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawCircleV(dst^, center^, radius^, color^) 
}
				
umka_TakeScreenshot :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	rl.TakeScreenshot(fileName^) 
}
				
umka_GetWorldToScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	camera := cast(^rl.Camera)umka.GetParam(params, 1)
	res := rl.GetWorldToScreen(position^, camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetMusicTimePlayed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	res := rl.GetMusicTimePlayed(music^ )
	result.realVal = cast(f64)res
}
				
umka_GetImageColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	x := cast(^c.int)umka.GetParam(params, 1)
	y := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GetImageColor(image^, x^, y^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawSplineBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineBezierCubic(points^, pointCount^, thick^, color^) 
}
				
umka_DrawEllipse :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerX := cast(^c.int)umka.GetParam(params, 0)
	centerY := cast(^c.int)umka.GetParam(params, 1)
	radiusH := cast(^f32)umka.GetParam(params, 2)
	radiusV := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawEllipse(centerX^, centerY^, radiusH^, radiusV^, color^) 
}
				
umka_LoadShaderFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	vsCode := cast(^cstring)umka.GetParam(params, 0)
	fsCode := cast(^cstring)umka.GetParam(params, 1)
	res := rl.LoadShaderFromMemory(vsCode^, fsCode^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ToggleBorderlessWindowed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.ToggleBorderlessWindowed()
}
				
umka_SetGamepadVibration :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	leftMotor := cast(^f32)umka.GetParam(params, 1)
	rightMotor := cast(^f32)umka.GetParam(params, 2)
	duration := cast(^f32)umka.GetParam(params, 3)
	rl.SetGamepadVibration(gamepad^, leftMotor^, rightMotor^, duration^) 
}
				
umka_DrawRectangleGradientH :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	left := cast(^rl.Color)umka.GetParam(params, 4)
	right := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawRectangleGradientH(posX^, posY^, width^, height^, left^, right^) 
}
				
umka_ColorIsEqual :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	col1 := cast(^rl.Color)umka.GetParam(params, 0)
	col2 := cast(^rl.Color)umka.GetParam(params, 1)
	res := rl.ColorIsEqual(col1^, col2^ )
	result.intVal = cast(i64)res
}
				
umka_UpdateModelAnimationBones :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	anim := cast(^rl.ModelAnimation)umka.GetParam(params, 1)
	frame := cast(^c.int)umka.GetParam(params, 2)
	rl.UpdateModelAnimationBones(model^, anim^, frame^) 
}
				
umka_GetMouseY :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetMouseY()
}
				
umka_UnloadRenderTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	target := cast(^rl.RenderTexture2D)umka.GetParam(params, 0)
	rl.UnloadRenderTexture(target^) 
}
				
umka_PollInputEvents :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.PollInputEvents()
}
				
umka_LoadImageColors :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	rl.LoadImageColors(image^) 
}
				
umka_LoadModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadModel(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CameraMoveToTarget :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	delta := cast(^f32)umka.GetParam(params, 1)
	rl.CameraMoveToTarget(camera^, delta^) 
}
				
umka_GenMeshHeightmap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	heightmap := cast(^rl.Image)umka.GetParam(params, 0)
	size := cast(^rl.Vector3)umka.GetParam(params, 1)
	res := rl.GenMeshHeightmap(heightmap^, size^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	rl.DrawFPS(posX^, posY^) 
}
				
umka_DrawRectangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawRectangleLines(posX^, posY^, width^, height^, color^) 
}
				
umka_IsWindowMinimized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowMinimized()
	result.intVal = cast(i64)res
}
				
umka_ImageColorTint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.ImageColorTint(image^, color^) 
}
				
umka_GetShapesTextureRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetShapesTextureRectangle()
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawCircleSector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	startAngle := cast(^f32)umka.GetParam(params, 2)
	endAngle := cast(^f32)umka.GetParam(params, 3)
	segments := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCircleSector(center^, radius^, startAngle^, endAngle^, segments^, color^) 
}
				
umka_ExportMeshAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportMeshAsCode(mesh^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_GetTouchPointId :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	index := cast(^c.int)umka.GetParam(params, 0)
	rl.GetTouchPointId(index^) 
}
				
umka_DrawBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	box := cast(^rl.BoundingBox)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.DrawBoundingBox(box^, color^) 
}
				
umka_IsFileNameValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.IsFileNameValid(fileName^ )
	result.intVal = cast(i64)res
}
				
umka_GetRenderHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetRenderHeight()
}
				
umka_GetWorldToScreen2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	camera := cast(^rl.Camera2D)umka.GetParam(params, 1)
	res := rl.GetWorldToScreen2D(position^, camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenMeshCube :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^f32)umka.GetParam(params, 0)
	height := cast(^f32)umka.GetParam(params, 1)
	length := cast(^f32)umka.GetParam(params, 2)
	res := rl.GenMeshCube(width^, height^, length^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetWindowSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	rl.SetWindowSize(width^, height^) 
}
				
umka_SetWindowFocused :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.SetWindowFocused()
}
				
umka_ExportFontAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportFontAsCode(font^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_GetTouchY :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetTouchY()
}
				
umka_GetWindowHandle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetWindowHandle()
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRectangleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	size := cast(^rl.Vector2)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawRectangleV(position^, size^, color^) 
}
				
umka_EndScissorMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndScissorMode()
}
				
umka_GetCameraProjectionMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	aspect := cast(^f32)umka.GetParam(params, 1)
	res := rl.GetCameraProjectionMatrix(camera^, aspect^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ExportAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	list := cast(^rl.AutomationEventList)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportAutomationEventList(list^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_IsKeyDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	res := rl.IsKeyDown(key^ )
	result.intVal = cast(i64)res
}
				
umka_GetGamepadName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	res := rl.GetGamepadName(gamepad^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetTouchPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	index := cast(^c.int)umka.GetParam(params, 0)
	res := rl.GetTouchPosition(index^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_BeginMode3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera3D)umka.GetParam(params, 0)
	rl.BeginMode3D(camera^) 
}
				
umka_SetWindowMonitor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.SetWindowMonitor(monitor^) 
}
				
umka_TextToCamel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToCamel(text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenMeshSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	rings := cast(^c.int)umka.GetParam(params, 1)
	slices := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GenMeshSphere(radius^, rings^, slices^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsMouseButtonReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	button := cast(^rl.MouseButton)umka.GetParam(params, 0)
	res := rl.IsMouseButtonReleased(button^ )
	result.intVal = cast(i64)res
}
				
umka_SetAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	list := cast(^^rl.AutomationEventList)umka.GetParam(params, 0)
	rl.SetAutomationEventList(list^) 
}
				
umka_GenImageCellular :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	tileSize := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GenImageCellular(width^, height^, tileSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawSplineSegmentBezierQuadratic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	c2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	thick := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawSplineSegmentBezierQuadratic(p1^, c2^, p3^, thick^, color^) 
}
				
umka_BeginScissorMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	x := cast(^c.int)umka.GetParam(params, 0)
	y := cast(^c.int)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	rl.BeginScissorMode(x^, y^, width^, height^) 
}
				
umka_DecompressData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	compData := cast(^rawptr)umka.GetParam(params, 0)
	compDataSize := cast(^c.int)umka.GetParam(params, 1)
	dataSize := cast(^^c.int)umka.GetParam(params, 2)
	rl.DecompressData(compData^, compDataSize^, dataSize^) 
}
				
umka_WaveCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^^rl.Wave)umka.GetParam(params, 0)
	initFrame := cast(^c.int)umka.GetParam(params, 1)
	finalFrame := cast(^c.int)umka.GetParam(params, 2)
	rl.WaveCrop(wave^, initFrame^, finalFrame^) 
}
				
umka_GenImageChecked :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	checksX := cast(^c.int)umka.GetParam(params, 2)
	checksY := cast(^c.int)umka.GetParam(params, 3)
	col1 := cast(^rl.Color)umka.GetParam(params, 4)
	col2 := cast(^rl.Color)umka.GetParam(params, 5)
	res := rl.GenImageChecked(width^, height^, checksX^, checksY^, col1^, col2^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetRandomSeed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	seed := cast(^c.uint)umka.GetParam(params, 0)
	rl.SetRandomSeed(seed^) 
}
				
umka_UnloadWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	rl.UnloadWave(wave^) 
}
				
umka_GetMonitorPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	res := rl.GetMonitorPosition(monitor^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsWindowHidden :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowHidden()
	result.intVal = cast(i64)res
}
				
umka_GetMonitorWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.GetMonitorWidth(monitor^) 
}
				
umka_CameraRoll :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	angle := cast(^f32)umka.GetParam(params, 1)
	rl.CameraRoll(camera^, angle^) 
}
				
umka_DrawPoint3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.DrawPoint3D(position^, color^) 
}
				
umka_DrawTriangleFan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawTriangleFan(points^, pointCount^, color^) 
}
				
umka_LoadMusicStreamFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileType := cast(^cstring)umka.GetParam(params, 0)
	data := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	res := rl.LoadMusicStreamFromMemory(fileType^, data^, dataSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	innerRadius := cast(^f32)umka.GetParam(params, 1)
	outerRadius := cast(^f32)umka.GetParam(params, 2)
	startAngle := cast(^f32)umka.GetParam(params, 3)
	endAngle := cast(^f32)umka.GetParam(params, 4)
	segments := cast(^c.int)umka.GetParam(params, 5)
	color := cast(^rl.Color)umka.GetParam(params, 6)
	rl.DrawRing(center^, innerRadius^, outerRadius^, startAngle^, endAngle^, segments^, color^) 
}
				
umka_GenImageGradientLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	direction := cast(^c.int)umka.GetParam(params, 2)
	start := cast(^rl.Color)umka.GetParam(params, 3)
	end := cast(^rl.Color)umka.GetParam(params, 4)
	res := rl.GenImageGradientLinear(width^, height^, direction^, start^, end^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetPixelColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	srcPtr := cast(^rawptr)umka.GetParam(params, 0)
	format := cast(^rl.PixelFormat)umka.GetParam(params, 1)
	res := rl.GetPixelColor(srcPtr^, format^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetMouseWheelMoveV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetMouseWheelMoveV()
	result.ptrVal = cast(rawptr)&res
}
				
umka_CameraPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	angle := cast(^f32)umka.GetParam(params, 1)
	lockView := cast(^bool)umka.GetParam(params, 2)
	rotateAroundTarget := cast(^bool)umka.GetParam(params, 3)
	rotateUp := cast(^bool)umka.GetParam(params, 4)
	rl.CameraPitch(camera^, angle^, lockView^, rotateAroundTarget^, rotateUp^) 
}
				
umka_DrawLineStrip :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawLineStrip(points^, pointCount^, color^) 
}
				
umka_SetMusicPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	pan := cast(^f32)umka.GetParam(params, 1)
	rl.SetMusicPan(music^, pan^) 
}
				
umka_UpdateTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	pixels := cast(^rawptr)umka.GetParam(params, 1)
	rl.UpdateTexture(texture^, pixels^) 
}
				
umka_ToggleFullscreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.ToggleFullscreen()
}
				
umka_UploadMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^^rl.Mesh)umka.GetParam(params, 0)
	is_dynamic := cast(^bool)umka.GetParam(params, 1)
	rl.UploadMesh(mesh^, is_dynamic^) 
}
				
umka_TextCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^[^]byte)umka.GetParam(params, 0)
	src := cast(^cstring)umka.GetParam(params, 1)
	rl.TextCopy(dst^, src^) 
}
				
umka_SetTextureFilter :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	filter := cast(^rl.TextureFilter)umka.GetParam(params, 1)
	rl.SetTextureFilter(texture^, filter^) 
}
				
umka_LoadTextureFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	res := rl.LoadTextureFromImage(image^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsAudioStreamValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	res := rl.IsAudioStreamValid(stream^ )
	result.intVal = cast(i64)res
}
				
umka_SetTextureWrap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	wrap := cast(^rl.TextureWrap)umka.GetParam(params, 1)
	rl.SetTextureWrap(texture^, wrap^) 
}
				
umka_GetCodepointCount :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	rl.GetCodepointCount(text^) 
}
				
umka_GetSplinePointBezierQuad :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	c2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	t := cast(^f32)umka.GetParam(params, 3)
	res := rl.GetSplinePointBezierQuad(p1^, c2^, p3^, t^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawCubeWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	width := cast(^f32)umka.GetParam(params, 1)
	height := cast(^f32)umka.GetParam(params, 2)
	length := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawCubeWires(position^, width^, height^, length^, color^) 
}
				
umka_SetWindowPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	x := cast(^c.int)umka.GetParam(params, 0)
	y := cast(^c.int)umka.GetParam(params, 1)
	rl.SetWindowPosition(x^, y^) 
}
				
umka_GenMeshPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sides := cast(^c.int)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	res := rl.GenMeshPoly(sides^, radius^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsModelValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	res := rl.IsModelValid(model^ )
	result.intVal = cast(i64)res
}
				
umka_DrawTextureV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	position := cast(^rl.Vector2)umka.GetParam(params, 1)
	tint := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawTextureV(texture^, position^, tint^) 
}
				
umka_GenMeshPlane :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^f32)umka.GetParam(params, 0)
	length := cast(^f32)umka.GetParam(params, 1)
	resX := cast(^c.int)umka.GetParam(params, 2)
	resZ := cast(^c.int)umka.GetParam(params, 3)
	res := rl.GenMeshPlane(width^, length^, resX^, resZ^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetTime()
	result.realVal = cast(f64)res
}
				
umka_IsCursorHidden :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsCursorHidden()
	result.intVal = cast(i64)res
}
				
umka_ImageFlipVertical :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageFlipVertical(image^) 
}
				
umka_GetShapesTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetShapesTexture()
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCameraUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	res := rl.GetCameraUp(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetFPS()
}
				
umka_DrawRectangleRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.DrawRectangleRec(rec^, color^) 
}
				
umka_IsCursorOnScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsCursorOnScreen()
	result.intVal = cast(i64)res
}
				
umka_DrawSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawSphere(centerPos^, radius^, color^) 
}
				
umka_LoadImageAnim :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	frames := cast(^^c.int)umka.GetParam(params, 1)
	res := rl.LoadImageAnim(fileName^, frames^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetSoundPitch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	pitch := cast(^f32)umka.GetParam(params, 1)
	rl.SetSoundPitch(sound^, pitch^) 
}
				
umka_GetFileNameWithoutExt :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	filePath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.GetFileNameWithoutExt(filePath^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UnloadMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.UnloadMusicStream(music^) 
}
				
umka_ImageAlphaMask :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	alphaMask := cast(^rl.Image)umka.GetParam(params, 1)
	rl.ImageAlphaMask(image^, alphaMask^) 
}
				
umka_SetWindowTitle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	title := cast(^cstring)umka.GetParam(params, 0)
	rl.SetWindowTitle(title^) 
}
				
umka_DrawSplineSegmentBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	thick := cast(^f32)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawSplineSegmentBasis(p1^, p2^, p3^, p4^, thick^, color^) 
}
				
umka_ImageRotateCW :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageRotateCW(image^) 
}
				
umka_SetWindowOpacity :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	opacity := cast(^f32)umka.GetParam(params, 0)
	rl.SetWindowOpacity(opacity^) 
}
				
umka_ImageColorContrast :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	contrast := cast(^f32)umka.GetParam(params, 1)
	rl.ImageColorContrast(image^, contrast^) 
}
				
umka_MinimizeWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.MinimizeWindow()
}
				
umka_GetMeshBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	res := rl.GetMeshBoundingBox(mesh^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetMouseOffset :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	offsetX := cast(^c.int)umka.GetParam(params, 0)
	offsetY := cast(^c.int)umka.GetParam(params, 1)
	rl.SetMouseOffset(offsetX^, offsetY^) 
}
				
umka_InitWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	title := cast(^cstring)umka.GetParam(params, 2)
	rl.InitWindow(width^, height^, title^) 
}
				
umka_LoadMaterials :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	materialCount := cast(^^c.int)umka.GetParam(params, 1)
	rl.LoadMaterials(fileName^, materialCount^) 
}
				
umka_IsKeyReleased :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	res := rl.IsKeyReleased(key^ )
	result.intVal = cast(i64)res
}
				
umka_FileExists :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.FileExists(fileName^ )
	result.intVal = cast(i64)res
}
				
umka_EndShaderMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndShaderMode()
}
				
umka_IsFileDropped :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsFileDropped()
	result.intVal = cast(i64)res
}
				
umka_GetSplinePointCatmullRom :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	t := cast(^f32)umka.GetParam(params, 4)
	res := rl.GetSplinePointCatmullRom(p1^, p2^, p3^, p4^, t^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCodepointPrevious :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	codepointSize := cast(^^c.int)umka.GetParam(params, 1)
	res := rl.GetCodepointPrevious(text^, codepointSize^ )
	result.intVal = cast(i64)res
}
				
umka_CheckCollisionSpheres :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center1 := cast(^rl.Vector3)umka.GetParam(params, 0)
	radius1 := cast(^f32)umka.GetParam(params, 1)
	center2 := cast(^rl.Vector3)umka.GetParam(params, 2)
	radius2 := cast(^f32)umka.GetParam(params, 3)
	res := rl.CheckCollisionSpheres(center1^, radius1^, center2^, radius2^ )
	result.intVal = cast(i64)res
}
				
umka_GetMonitorRefreshRate :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.GetMonitorRefreshRate(monitor^) 
}
				
umka_DrawCubeWiresV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	size := cast(^rl.Vector3)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawCubeWiresV(position^, size^, color^) 
}
				
umka_SetClipboardText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	rl.SetClipboardText(text^) 
}
				
umka_DrawText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	posX := cast(^c.int)umka.GetParam(params, 1)
	posY := cast(^c.int)umka.GetParam(params, 2)
	fontSize := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawText(text^, posX^, posY^, fontSize^, color^) 
}
				
umka_LoadAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadAutomationEventList(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_EndMode3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndMode3D()
}
				
umka_DrawModelPoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	scale := cast(^f32)umka.GetParam(params, 2)
	tint := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawModelPoints(model^, position^, scale^, tint^) 
}
				
umka_ImageDrawCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	centerX := cast(^c.int)umka.GetParam(params, 1)
	centerY := cast(^c.int)umka.GetParam(params, 2)
	radius := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDrawCircle(dst^, centerX^, centerY^, radius^, color^) 
}
				
umka_ResumeSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.ResumeSound(sound^) 
}
				
umka_UnloadDroppedFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	files := cast(^rl.FilePathList)umka.GetParam(params, 0)
	rl.UnloadDroppedFiles(files^) 
}
				
umka_SetMousePosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	x := cast(^c.int)umka.GetParam(params, 0)
	y := cast(^c.int)umka.GetParam(params, 1)
	rl.SetMousePosition(x^, y^) 
}
				
umka_GetSplinePointLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector2)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector2)umka.GetParam(params, 1)
	t := cast(^f32)umka.GetParam(params, 2)
	res := rl.GetSplinePointLinear(startPos^, endPos^, t^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CloseWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.CloseWindow()
}
				
umka_GetApplicationDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetApplicationDirectory()
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageDrawTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	v1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	v2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	v3 := cast(^rl.Vector2)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDrawTriangle(dst^, v1^, v2^, v3^, color^) 
}
				
umka_IsWindowReady :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowReady()
	result.intVal = cast(i64)res
}
				
umka_GetImageAlphaBorder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	threshold := cast(^f32)umka.GetParam(params, 1)
	res := rl.GetImageAlphaBorder(image^, threshold^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawCube :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	width := cast(^f32)umka.GetParam(params, 1)
	height := cast(^f32)umka.GetParam(params, 2)
	length := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawCube(position^, width^, height^, length^, color^) 
}
				
umka_LoadFileData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	dataSize := cast(^^c.int)umka.GetParam(params, 1)
	rl.LoadFileData(fileName^, dataSize^) 
}
				
umka_RestoreWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.RestoreWindow()
}
				
umka_LoadImagePalette :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	maxPaletteSize := cast(^c.int)umka.GetParam(params, 1)
	colorCount := cast(^^c.int)umka.GetParam(params, 2)
	rl.LoadImagePalette(image^, maxPaletteSize^, colorCount^) 
}
				
umka_DrawTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	posX := cast(^c.int)umka.GetParam(params, 1)
	posY := cast(^c.int)umka.GetParam(params, 2)
	tint := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawTexture(texture^, posX^, posY^, tint^) 
}
				
umka_DrawCircleSectorLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	startAngle := cast(^f32)umka.GetParam(params, 2)
	endAngle := cast(^f32)umka.GetParam(params, 3)
	segments := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCircleSectorLines(center^, radius^, startAngle^, endAngle^, segments^, color^) 
}
				
umka_EndBlendMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndBlendMode()
}
				
umka_DrawPixel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	posX := cast(^c.int)umka.GetParam(params, 0)
	posY := cast(^c.int)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawPixel(posX^, posY^, color^) 
}
				
umka_SetWindowMaxSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	rl.SetWindowMaxSize(width^, height^) 
}
				
umka_UnloadDirectoryFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	files := cast(^rl.FilePathList)umka.GetParam(params, 0)
	rl.UnloadDirectoryFiles(files^) 
}
				
umka_UnloadModelAnimations :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	animations := cast(^[^]rl.ModelAnimation)umka.GetParam(params, 0)
	animCount := cast(^c.int)umka.GetParam(params, 1)
	rl.UnloadModelAnimations(animations^, animCount^) 
}
				
umka_ImageFlipHorizontal :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageFlipHorizontal(image^) 
}
				
umka_ColorFromNormalized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	normalized := cast(^rl.Vector4)umka.GetParam(params, 0)
	res := rl.ColorFromNormalized(normalized^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetWorldToScreenEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	camera := cast(^rl.Camera)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	res := rl.GetWorldToScreenEx(position^, camera^, width^, height^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetMonitorPhysicalHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.GetMonitorPhysicalHeight(monitor^) 
}
				
umka_LoadFontEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	fontSize := cast(^c.int)umka.GetParam(params, 1)
	codepoints := cast(^[^]rune)umka.GetParam(params, 2)
	codepointCount := cast(^c.int)umka.GetParam(params, 3)
	res := rl.LoadFontEx(fileName^, fontSize^, codepoints^, codepointCount^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DisableCursor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.DisableCursor()
}
				
umka_DrawTriangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	v1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	v2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	v3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawTriangleLines(v1^, v2^, v3^, color^) 
}
				
umka_GenMeshHemiSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	rings := cast(^c.int)umka.GetParam(params, 1)
	slices := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GenMeshHemiSphere(radius^, rings^, slices^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageDrawTriangleFan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	points := cast(^[^]rl.Vector2)umka.GetParam(params, 1)
	pointCount := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawTriangleFan(dst^, points^, pointCount^, color^) 
}
				
umka_IsAudioStreamPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	res := rl.IsAudioStreamPlaying(stream^ )
	result.intVal = cast(i64)res
}
				
umka_ImageMipmaps :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageMipmaps(image^) 
}
				
umka_IsImageValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	res := rl.IsImageValid(image^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawTextEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	font := cast(^rl.Font)umka.GetParam(params, 1)
	text := cast(^cstring)umka.GetParam(params, 2)
	position := cast(^rl.Vector2)umka.GetParam(params, 3)
	fontSize := cast(^f32)umka.GetParam(params, 4)
	spacing := cast(^f32)umka.GetParam(params, 5)
	tint := cast(^rl.Color)umka.GetParam(params, 6)
	rl.ImageDrawTextEx(dst^, font^, text^, position^, fontSize^, spacing^, tint^) 
}
				
umka_CheckCollisionPointLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	point := cast(^rl.Vector2)umka.GetParam(params, 0)
	p1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	threshold := cast(^c.int)umka.GetParam(params, 3)
	res := rl.CheckCollisionPointLine(point^, p1^, p2^, threshold^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawCircleLinesV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	center := cast(^rl.Vector2)umka.GetParam(params, 1)
	radius := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawCircleLinesV(dst^, center^, radius^, color^) 
}
				
umka_IsPathFile :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	path := cast(^cstring)umka.GetParam(params, 0)
	res := rl.IsPathFile(path^ )
	result.intVal = cast(i64)res
}
				
umka_GetPixelDataSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	format := cast(^rl.PixelFormat)umka.GetParam(params, 2)
	rl.GetPixelDataSize(width^, height^, format^) 
}
				
umka_DrawRectangleRoundedLinesEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	roundness := cast(^f32)umka.GetParam(params, 1)
	segments := cast(^c.int)umka.GetParam(params, 2)
	lineThick := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawRectangleRoundedLinesEx(rec^, roundness^, segments^, lineThick^, color^) 
}
				
umka_SetTraceLogLevel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	logLevel := cast(^rl.TraceLogLevel)umka.GetParam(params, 0)
	rl.SetTraceLogLevel(logLevel^) 
}
				
umka_ImageFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 1)
	res := rl.ImageFromImage(image^, rec^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UnloadFont :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	rl.UnloadFont(font^) 
}
				
umka_GetMonitorName :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	res := rl.GetMonitorName(monitor^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsSoundValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	res := rl.IsSoundValid(sound^ )
	result.intVal = cast(i64)res
}
				
umka_GetScreenToWorldRayEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector2)umka.GetParam(params, 0)
	camera := cast(^rl.Camera)umka.GetParam(params, 1)
	width := cast(^c.int)umka.GetParam(params, 2)
	height := cast(^c.int)umka.GetParam(params, 3)
	res := rl.GetScreenToWorldRayEx(position^, camera^, width^, height^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UnloadShader :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	rl.UnloadShader(shader^) 
}
				
umka_DrawLineEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector2)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector2)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawLineEx(startPos^, endPos^, thick^, color^) 
}
				
umka_LoadImageFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileType := cast(^cstring)umka.GetParam(params, 0)
	fileData := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	res := rl.LoadImageFromMemory(fileType^, fileData^, dataSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenImageGradientSquare :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	density := cast(^f32)umka.GetParam(params, 2)
	inner := cast(^rl.Color)umka.GetParam(params, 3)
	outer := cast(^rl.Color)umka.GetParam(params, 4)
	res := rl.GenImageGradientSquare(width^, height^, density^, inner^, outer^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ColorAlphaBlend :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^rl.Color)umka.GetParam(params, 0)
	src := cast(^rl.Color)umka.GetParam(params, 1)
	tint := cast(^rl.Color)umka.GetParam(params, 2)
	res := rl.ColorAlphaBlend(dst^, src^, tint^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawGrid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	slices := cast(^c.int)umka.GetParam(params, 0)
	spacing := cast(^f32)umka.GetParam(params, 1)
	rl.DrawGrid(slices^, spacing^) 
}
				
umka_GenImageText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	text := cast(^cstring)umka.GetParam(params, 2)
	res := rl.GenImageText(width^, height^, text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetGesturePinchVector :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGesturePinchVector()
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadImageFromTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	res := rl.LoadImageFromTexture(texture^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageDrawTriangleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	v1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	v2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	v3 := cast(^rl.Vector2)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDrawTriangleLines(dst^, v1^, v2^, v3^, color^) 
}
				
umka_GetGlyphInfo :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	codepoint := cast(^rune)umka.GetParam(params, 1)
	res := rl.GetGlyphInfo(font^, codepoint^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadImageAnimFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileType := cast(^cstring)umka.GetParam(params, 0)
	fileData := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	frames := cast(^^c.int)umka.GetParam(params, 3)
	res := rl.LoadImageAnimFromMemory(fileType^, fileData^, dataSize^, frames^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetGesturePinchAngle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGesturePinchAngle()
	result.realVal = cast(f64)res
}
				
umka_GenMeshCylinder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	radius := cast(^f32)umka.GetParam(params, 0)
	height := cast(^f32)umka.GetParam(params, 1)
	slices := cast(^c.int)umka.GetParam(params, 2)
	res := rl.GenMeshCylinder(radius^, height^, slices^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageColorReplace :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	replace := cast(^rl.Color)umka.GetParam(params, 2)
	rl.ImageColorReplace(image^, color^, replace^) 
}
				
umka_TextToPascal :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	res := rl.TextToPascal(text^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ColorAlpha :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	alpha := cast(^f32)umka.GetParam(params, 1)
	res := rl.ColorAlpha(color^, alpha^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GenMeshCubicmap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	cubicmap := cast(^rl.Image)umka.GetParam(params, 0)
	cubeSize := cast(^rl.Vector3)umka.GetParam(params, 1)
	res := rl.GenMeshCubicmap(cubicmap^, cubeSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCollisionRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec1 := cast(^rl.Rectangle)umka.GetParam(params, 0)
	rec2 := cast(^rl.Rectangle)umka.GetParam(params, 1)
	res := rl.GetCollisionRec(rec1^, rec2^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadAudioStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sampleRate := cast(^c.uint)umka.GetParam(params, 0)
	sampleSize := cast(^c.uint)umka.GetParam(params, 1)
	channels := cast(^c.uint)umka.GetParam(params, 2)
	res := rl.LoadAudioStream(sampleRate^, sampleSize^, channels^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawSplineSegmentBezierCubic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	p1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	c2 := cast(^rl.Vector2)umka.GetParam(params, 1)
	c3 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p4 := cast(^rl.Vector2)umka.GetParam(params, 3)
	thick := cast(^f32)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawSplineSegmentBezierCubic(p1^, c2^, c3^, p4^, thick^, color^) 
}
				
umka_ImageToPOT :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	fill := cast(^rl.Color)umka.GetParam(params, 1)
	rl.ImageToPOT(image^, fill^) 
}
				
umka_SetAudioStreamPan :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	pan := cast(^f32)umka.GetParam(params, 1)
	rl.SetAudioStreamPan(stream^, pan^) 
}
				
umka_TextFindIndex :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	find := cast(^cstring)umka.GetParam(params, 1)
	rl.TextFindIndex(text^, find^) 
}
				
umka_DrawSphereWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	radius := cast(^f32)umka.GetParam(params, 1)
	rings := cast(^c.int)umka.GetParam(params, 2)
	slices := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawSphereWires(centerPos^, radius^, rings^, slices^, color^) 
}
				
umka_ChangeDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dir := cast(^cstring)umka.GetParam(params, 0)
	res := rl.ChangeDirectory(dir^ )
	result.intVal = cast(i64)res
}
				
umka_DrawTextureRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	source := cast(^rl.Rectangle)umka.GetParam(params, 1)
	position := cast(^rl.Vector2)umka.GetParam(params, 2)
	tint := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawTextureRec(texture^, source^, position^, tint^) 
}
				
umka_GenTextureMipmaps :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^^rl.Texture2D)umka.GetParam(params, 0)
	rl.GenTextureMipmaps(texture^) 
}
				
umka_GetGlyphIndex :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	codepoint := cast(^rune)umka.GetParam(params, 1)
	rl.GetGlyphIndex(font^, codepoint^) 
}
				
umka_DrawTextPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	text := cast(^cstring)umka.GetParam(params, 1)
	position := cast(^rl.Vector2)umka.GetParam(params, 2)
	origin := cast(^rl.Vector2)umka.GetParam(params, 3)
	rotation := cast(^f32)umka.GetParam(params, 4)
	fontSize := cast(^f32)umka.GetParam(params, 5)
	spacing := cast(^f32)umka.GetParam(params, 6)
	tint := cast(^rl.Color)umka.GetParam(params, 7)
	rl.DrawTextPro(font^, text^, position^, origin^, rotation^, fontSize^, spacing^, tint^) 
}
				
umka_CameraMoveRight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	distance := cast(^f32)umka.GetParam(params, 1)
	moveInWorldPlane := cast(^bool)umka.GetParam(params, 2)
	rl.CameraMoveRight(camera^, distance^, moveInWorldPlane^) 
}
				
umka_SetModelMeshMaterial :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^^rl.Model)umka.GetParam(params, 0)
	meshId := cast(^c.int)umka.GetParam(params, 1)
	materialId := cast(^c.int)umka.GetParam(params, 2)
	rl.SetModelMeshMaterial(model^, meshId^, materialId^) 
}
				
umka_GetMusicTimeLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	res := rl.GetMusicTimeLength(music^ )
	result.realVal = cast(f64)res
}
				
umka_SetShapesTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	source := cast(^rl.Rectangle)umka.GetParam(params, 1)
	rl.SetShapesTexture(texture^, source^) 
}
				
umka_SaveFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	text := cast(^[^]byte)umka.GetParam(params, 1)
	res := rl.SaveFileText(fileName^, text^ )
	result.intVal = cast(i64)res
}
				
umka_DrawTextureEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	position := cast(^rl.Vector2)umka.GetParam(params, 1)
	rotation := cast(^f32)umka.GetParam(params, 2)
	scale := cast(^f32)umka.GetParam(params, 3)
	tint := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawTextureEx(texture^, position^, rotation^, scale^, tint^) 
}
				
umka_DrawSplineBasis :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineBasis(points^, pointCount^, thick^, color^) 
}
				
umka_DrawTriangle3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	v1 := cast(^rl.Vector3)umka.GetParam(params, 0)
	v2 := cast(^rl.Vector3)umka.GetParam(params, 1)
	v3 := cast(^rl.Vector3)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawTriangle3D(v1^, v2^, v3^, color^) 
}
				
umka_SetMusicVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	volume := cast(^f32)umka.GetParam(params, 1)
	rl.SetMusicVolume(music^, volume^) 
}
				
umka_UpdateModelAnimation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	anim := cast(^rl.ModelAnimation)umka.GetParam(params, 1)
	frame := cast(^c.int)umka.GetParam(params, 2)
	rl.UpdateModelAnimation(model^, anim^, frame^) 
}
				
umka_LoadDroppedFiles :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.LoadDroppedFiles()
	result.ptrVal = cast(rawptr)&res
}
				
umka_CheckCollisionPointTriangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	point := cast(^rl.Vector2)umka.GetParam(params, 0)
	p1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	p2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	p3 := cast(^rl.Vector2)umka.GetParam(params, 3)
	res := rl.CheckCollisionPointTriangle(point^, p1^, p2^, p3^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawPixelV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	position := cast(^rl.Vector2)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.ImageDrawPixelV(dst^, position^, color^) 
}
				
umka_GetRayCollisionMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	mesh := cast(^rl.Mesh)umka.GetParam(params, 1)
	transform := cast(^rl.Matrix)umka.GetParam(params, 2)
	res := rl.GetRayCollisionMesh(ray^, mesh^, transform^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawMeshInstanced :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	material := cast(^rl.Material)umka.GetParam(params, 1)
	transforms := cast(^[^]rl.Matrix)umka.GetParam(params, 2)
	instances := cast(^c.int)umka.GetParam(params, 3)
	rl.DrawMeshInstanced(mesh^, material^, transforms^, instances^) 
}
				
umka_GetCodepoint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	codepointSize := cast(^^c.int)umka.GetParam(params, 1)
	res := rl.GetCodepoint(text^, codepointSize^ )
	result.intVal = cast(i64)res
}
				
umka_IsMaterialValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	material := cast(^rl.Material)umka.GetParam(params, 0)
	res := rl.IsMaterialValid(material^ )
	result.intVal = cast(i64)res
}
				
umka_SetWindowIcons :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	images := cast(^[^]rl.Image)umka.GetParam(params, 0)
	count := cast(^c.int)umka.GetParam(params, 1)
	rl.SetWindowIcons(images^, count^) 
}
				
umka_GetMouseDelta :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetMouseDelta()
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetRayCollisionSphere :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	center := cast(^rl.Vector3)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	res := rl.GetRayCollisionSphere(ray^, center^, radius^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageDrawLineV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	start := cast(^rl.Vector2)umka.GetParam(params, 1)
	end := cast(^rl.Vector2)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawLineV(dst^, start^, end^, color^) 
}
				
umka_ImageDrawRectangle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	posX := cast(^c.int)umka.GetParam(params, 1)
	posY := cast(^c.int)umka.GetParam(params, 2)
	width := cast(^c.int)umka.GetParam(params, 3)
	height := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.ImageDrawRectangle(dst^, posX^, posY^, width^, height^, color^) 
}
				
umka_WaveCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	res := rl.WaveCopy(wave^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsMouseButtonDown :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	button := cast(^rl.MouseButton)umka.GetParam(params, 0)
	res := rl.IsMouseButtonDown(button^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawRectangleV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	position := cast(^rl.Vector2)umka.GetParam(params, 1)
	size := cast(^rl.Vector2)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.ImageDrawRectangleV(dst^, position^, size^, color^) 
}
				
umka_ExportImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportImage(image^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_LoadTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadTexture(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_WaitTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	seconds := cast(^f64)umka.GetParam(params, 0)
	rl.WaitTime(seconds^) 
}
				
umka_GetMousePosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetMousePosition()
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetFrameTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetFrameTime()
	result.realVal = cast(f64)res
}
				
umka_GetFileModTime :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	rl.GetFileModTime(fileName^) 
}
				
umka_ExportDataAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	fileName := cast(^cstring)umka.GetParam(params, 2)
	res := rl.ExportDataAsCode(data^, dataSize^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_SetWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	flags := cast(^rl.ConfigFlags)umka.GetParam(params, 0)
	rl.SetWindowState(flags^) 
}
				
umka_LoadImageRaw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	width := cast(^c.int)umka.GetParam(params, 1)
	height := cast(^c.int)umka.GetParam(params, 2)
	format := cast(^rl.PixelFormat)umka.GetParam(params, 3)
	headerSize := cast(^c.int)umka.GetParam(params, 4)
	res := rl.LoadImageRaw(fileName^, width^, height^, format^, headerSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_TextJoin :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	textList := cast(^[^]cstring)umka.GetParam(params, 0)
	count := cast(^c.int)umka.GetParam(params, 1)
	delimiter := cast(^cstring)umka.GetParam(params, 2)
	res := rl.TextJoin(textList^, count^, delimiter^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageAlphaCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	threshold := cast(^f32)umka.GetParam(params, 1)
	rl.ImageAlphaCrop(image^, threshold^) 
}
				
umka_GetScreenWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetScreenWidth()
}
				
umka_GetCameraViewMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	res := rl.GetCameraViewMatrix(camera^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsGamepadButtonUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gamepad := cast(^c.int)umka.GetParam(params, 0)
	button := cast(^rl.GamepadButton)umka.GetParam(params, 1)
	res := rl.IsGamepadButtonUp(gamepad^, button^ )
	result.intVal = cast(i64)res
}
				
umka_StartAutomationEventRecording :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.StartAutomationEventRecording()
}
				
umka_ImageKernelConvolution :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	kernel := cast(^[^]f32)umka.GetParam(params, 1)
	kernelSize := cast(^c.int)umka.GetParam(params, 2)
	rl.ImageKernelConvolution(image^, kernel^, kernelSize^) 
}
				
umka_DrawModelEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	rotationAxis := cast(^rl.Vector3)umka.GetParam(params, 2)
	rotationAngle := cast(^f32)umka.GetParam(params, 3)
	scale := cast(^rl.Vector3)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawModelEx(model^, position^, rotationAxis^, rotationAngle^, scale^, tint^) 
}
				
umka_UpdateMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	music := cast(^rl.Music)umka.GetParam(params, 0)
	rl.UpdateMusicStream(music^) 
}
				
umka_ColorLerp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color1 := cast(^rl.Color)umka.GetParam(params, 0)
	color2 := cast(^rl.Color)umka.GetParam(params, 1)
	factor := cast(^f32)umka.GetParam(params, 2)
	res := rl.ColorLerp(color1^, color2^, factor^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ColorNormalize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	res := rl.ColorNormalize(color^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsWindowMaximized :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowMaximized()
	result.intVal = cast(i64)res
}
				
umka_GetCodepointNext :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	codepointSize := cast(^^c.int)umka.GetParam(params, 1)
	res := rl.GetCodepointNext(text^, codepointSize^ )
	result.intVal = cast(i64)res
}
				
umka_ImageAlphaPremultiply :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageAlphaPremultiply(image^) 
}
				
umka_UnloadAutomationEventList :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	list := cast(^rl.AutomationEventList)umka.GetParam(params, 0)
	rl.UnloadAutomationEventList(list^) 
}
				
umka_UnloadModelAnimation :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	anim := cast(^rl.ModelAnimation)umka.GetParam(params, 0)
	rl.UnloadModelAnimation(anim^) 
}
				
umka_DrawCubeV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	size := cast(^rl.Vector3)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawCubeV(position^, size^, color^) 
}
				
umka_ImageDrawCircleLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	centerX := cast(^c.int)umka.GetParam(params, 1)
	centerY := cast(^c.int)umka.GetParam(params, 2)
	radius := cast(^c.int)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.ImageDrawCircleLines(dst^, centerX^, centerY^, radius^, color^) 
}
				
umka_DrawCylinderWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	radiusTop := cast(^f32)umka.GetParam(params, 1)
	radiusBottom := cast(^f32)umka.GetParam(params, 2)
	height := cast(^f32)umka.GetParam(params, 3)
	slices := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCylinderWires(position^, radiusTop^, radiusBottom^, height^, slices^, color^) 
}
				
umka_EndTextureMode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndTextureMode()
}
				
umka_GetShaderLocationAttrib :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	attribName := cast(^cstring)umka.GetParam(params, 1)
	rl.GetShaderLocationAttrib(shader^, attribName^) 
}
				
umka_SetShaderValueTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	locIndex := cast(^c.int)umka.GetParam(params, 1)
	texture := cast(^rl.Texture2D)umka.GetParam(params, 2)
	rl.SetShaderValueTexture(shader^, locIndex^, texture^) 
}
				
umka_LoadImageFromScreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.LoadImageFromScreen()
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageResizeCanvas :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	newWidth := cast(^c.int)umka.GetParam(params, 1)
	newHeight := cast(^c.int)umka.GetParam(params, 2)
	offsetX := cast(^c.int)umka.GetParam(params, 3)
	offsetY := cast(^c.int)umka.GetParam(params, 4)
	fill := cast(^rl.Color)umka.GetParam(params, 5)
	rl.ImageResizeCanvas(image^, newWidth^, newHeight^, offsetX^, offsetY^, fill^) 
}
				
umka_InitAudioDevice :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.InitAudioDevice()
}
				
umka_TextSplit :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	delimiter := cast(^byte)umka.GetParam(params, 1)
	count := cast(^^c.int)umka.GetParam(params, 2)
	rl.TextSplit(text^, delimiter^, count^) 
}
				
umka_GetPrevDirectoryPath :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dirPath := cast(^cstring)umka.GetParam(params, 0)
	res := rl.GetPrevDirectoryPath(dirPath^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsSoundPlaying :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	res := rl.IsSoundPlaying(sound^ )
	result.intVal = cast(i64)res
}
				
umka_PlayAutomationEvent :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	event := cast(^rl.AutomationEvent)umka.GetParam(params, 0)
	rl.PlayAutomationEvent(event^) 
}
				
umka_ImageCrop :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	crop := cast(^rl.Rectangle)umka.GetParam(params, 1)
	rl.ImageCrop(image^, crop^) 
}
				
umka_GetModelBoundingBox :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	res := rl.GetModelBoundingBox(model^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawLine3D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector3)umka.GetParam(params, 1)
	color := cast(^rl.Color)umka.GetParam(params, 2)
	rl.DrawLine3D(startPos^, endPos^, color^) 
}
				
umka_CheckCollisionLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos1 := cast(^rl.Vector2)umka.GetParam(params, 0)
	endPos1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	startPos2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	endPos2 := cast(^rl.Vector2)umka.GetParam(params, 3)
	collisionPoint := cast(^[^]rl.Vector2)umka.GetParam(params, 4)
	res := rl.CheckCollisionLines(startPos1^, endPos1^, startPos2^, endPos2^, collisionPoint^ )
	result.intVal = cast(i64)res
}
				
umka_UnloadRandomSequence :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sequence := cast(^[^]c.int)umka.GetParam(params, 0)
	rl.UnloadRandomSequence(sequence^) 
}
				
umka_DrawSplineBezierQuadratic :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineBezierQuadratic(points^, pointCount^, thick^, color^) 
}
				
umka_SetTargetFPS :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fps := cast(^c.int)umka.GetParam(params, 0)
	rl.SetTargetFPS(fps^) 
}
				
umka_LoadSoundFromWave :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	res := rl.LoadSoundFromWave(wave^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ImageColorBrightness :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	brightness := cast(^c.int)umka.GetParam(params, 1)
	rl.ImageColorBrightness(image^, brightness^) 
}
				
umka_LoadWaveSamples :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	rl.LoadWaveSamples(wave^) 
}
				
umka_SetPixelColor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dstPtr := cast(^rawptr)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	format := cast(^rl.PixelFormat)umka.GetParam(params, 2)
	rl.SetPixelColor(dstPtr^, color^, format^) 
}
				
umka_SetWindowMinSize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	rl.SetWindowMinSize(width^, height^) 
}
				
umka_IsMouseButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	button := cast(^rl.MouseButton)umka.GetParam(params, 0)
	res := rl.IsMouseButtonPressed(button^ )
	result.intVal = cast(i64)res
}
				
umka_DrawMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	material := cast(^rl.Material)umka.GetParam(params, 1)
	transform := cast(^rl.Matrix)umka.GetParam(params, 2)
	rl.DrawMesh(mesh^, material^, transform^) 
}
				
umka_LoadRenderTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	res := rl.LoadRenderTexture(width^, height^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UnloadSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.UnloadSound(sound^) 
}
				
umka_ImageCopy :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	res := rl.ImageCopy(image^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetFileLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	rl.GetFileLength(fileName^) 
}
				
umka_MeasureText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	fontSize := cast(^c.int)umka.GetParam(params, 1)
	rl.MeasureText(text^, fontSize^) 
}
				
umka_ImageDrawLine :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	startPosX := cast(^c.int)umka.GetParam(params, 1)
	startPosY := cast(^c.int)umka.GetParam(params, 2)
	endPosX := cast(^c.int)umka.GetParam(params, 3)
	endPosY := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.ImageDrawLine(dst^, startPosX^, startPosY^, endPosX^, endPosY^, color^) 
}
				
umka_DrawCircleGradient :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerX := cast(^c.int)umka.GetParam(params, 0)
	centerY := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	inner := cast(^rl.Color)umka.GetParam(params, 3)
	outer := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawCircleGradient(centerX^, centerY^, radius^, inner^, outer^) 
}
				
umka_GetMonitorHeight :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.GetMonitorHeight(monitor^) 
}
				
umka_DrawPolyLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	sides := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	rotation := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawPolyLines(center^, sides^, radius^, rotation^, color^) 
}
				
umka_LoadSound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadSound(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetExitKey :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	key := cast(^rl.KeyboardKey)umka.GetParam(params, 0)
	rl.SetExitKey(key^) 
}
				
umka_LoadModelFromMesh :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	res := rl.LoadModelFromMesh(mesh^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_UnloadCodepoints :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	codepoints := cast(^[^]rune)umka.GetParam(params, 0)
	rl.UnloadCodepoints(codepoints^) 
}
				
umka_LoadImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadImage(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadMusicStream :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	res := rl.LoadMusicStream(fileName^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_ExportImageAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportImageAsCode(image^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_ColorBrightness :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	factor := cast(^f32)umka.GetParam(params, 1)
	res := rl.ColorBrightness(color^, factor^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_LoadTextureCubemap :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	layout := cast(^rl.CubemapLayout)umka.GetParam(params, 1)
	res := rl.LoadTextureCubemap(image^, layout^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsWindowFocused :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowFocused()
	result.intVal = cast(i64)res
}
				
umka_ComputeMD5 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	rl.ComputeMD5(data^, dataSize^) 
}
				
umka_ExportImageToMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	fileType := cast(^cstring)umka.GetParam(params, 1)
	fileSize := cast(^^c.int)umka.GetParam(params, 2)
	res := rl.ExportImageToMemory(image^, fileType^, fileSize^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_GetCurrentMonitor :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetCurrentMonitor()
}
				
umka_DrawTexturePro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	source := cast(^rl.Rectangle)umka.GetParam(params, 1)
	dest := cast(^rl.Rectangle)umka.GetParam(params, 2)
	origin := cast(^rl.Vector2)umka.GetParam(params, 3)
	rotation := cast(^f32)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawTexturePro(texture^, source^, dest^, origin^, rotation^, tint^) 
}
				
umka_DrawCylinder :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	position := cast(^rl.Vector3)umka.GetParam(params, 0)
	radiusTop := cast(^f32)umka.GetParam(params, 1)
	radiusBottom := cast(^f32)umka.GetParam(params, 2)
	height := cast(^f32)umka.GetParam(params, 3)
	slices := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCylinder(position^, radiusTop^, radiusBottom^, height^, slices^, color^) 
}
				
umka_DrawModelWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	position := cast(^rl.Vector3)umka.GetParam(params, 1)
	scale := cast(^f32)umka.GetParam(params, 2)
	tint := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawModelWires(model^, position^, scale^, tint^) 
}
				
umka_DrawCircle :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	centerX := cast(^c.int)umka.GetParam(params, 0)
	centerY := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawCircle(centerX^, centerY^, radius^, color^) 
}
				
umka_ImageRotateCCW :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageRotateCCW(image^) 
}
				
umka_CodepointToUTF8 :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	codepoint := cast(^rune)umka.GetParam(params, 0)
	utf8Size := cast(^^c.int)umka.GetParam(params, 1)
	res := rl.CodepointToUTF8(codepoint^, utf8Size^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawTextureNPatch :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	texture := cast(^rl.Texture2D)umka.GetParam(params, 0)
	nPatchInfo := cast(^rl.NPatchInfo)umka.GetParam(params, 1)
	dest := cast(^rl.Rectangle)umka.GetParam(params, 2)
	origin := cast(^rl.Vector2)umka.GetParam(params, 3)
	rotation := cast(^f32)umka.GetParam(params, 4)
	tint := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawTextureNPatch(texture^, nPatchInfo^, dest^, origin^, rotation^, tint^) 
}
				
umka_CloseAudioDevice :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.CloseAudioDevice()
}
				
umka_IsWindowState :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	flags := cast(^rl.ConfigFlags)umka.GetParam(params, 0)
	res := rl.IsWindowState(flags^ )
	result.intVal = cast(i64)res
}
				
umka_UnloadModel :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	rl.UnloadModel(model^) 
}
				
umka_DrawRectangleRoundedLines :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	roundness := cast(^f32)umka.GetParam(params, 1)
	segments := cast(^c.int)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawRectangleRoundedLines(rec^, roundness^, segments^, color^) 
}
				
umka_LoadMaterialDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.LoadMaterialDefault()
	result.ptrVal = cast(rawptr)&res
}
				
umka_SetAudioStreamVolume :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	volume := cast(^f32)umka.GetParam(params, 1)
	rl.SetAudioStreamVolume(stream^, volume^) 
}
				
umka_IsWaveValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	res := rl.IsWaveValid(wave^ )
	result.intVal = cast(i64)res
}
				
umka_ImageResize :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	newWidth := cast(^c.int)umka.GetParam(params, 1)
	newHeight := cast(^c.int)umka.GetParam(params, 2)
	rl.ImageResize(image^, newWidth^, newHeight^) 
}
				
umka_MemAlloc :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	size := cast(^c.uint)umka.GetParam(params, 0)
	res := rl.MemAlloc(size^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_WaveFormat :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^^rl.Wave)umka.GetParam(params, 0)
	sampleRate := cast(^c.int)umka.GetParam(params, 1)
	sampleSize := cast(^c.int)umka.GetParam(params, 2)
	channels := cast(^c.int)umka.GetParam(params, 3)
	rl.WaveFormat(wave^, sampleRate^, sampleSize^, channels^) 
}
				
umka_UpdateMeshBuffer :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mesh := cast(^rl.Mesh)umka.GetParam(params, 0)
	index := cast(^c.int)umka.GetParam(params, 1)
	data := cast(^rawptr)umka.GetParam(params, 2)
	dataSize := cast(^c.int)umka.GetParam(params, 3)
	offset := cast(^c.int)umka.GetParam(params, 4)
	rl.UpdateMeshBuffer(mesh^, index^, data^, dataSize^, offset^) 
}
				
umka_SetAutomationEventBaseFrame :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	frame := cast(^c.int)umka.GetParam(params, 0)
	rl.SetAutomationEventBaseFrame(frame^) 
}
				
umka_PlaySound :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	sound := cast(^rl.Sound)umka.GetParam(params, 0)
	rl.PlaySound(sound^) 
}
				
umka_IsGestureDetected :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	gesture := cast(^rl.Gesture)umka.GetParam(params, 0)
	res := rl.IsGestureDetected(gesture^ )
	result.intVal = cast(i64)res
}
				
umka_SetWindowIcon :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	rl.SetWindowIcon(image^) 
}
				
umka_IsModelAnimationValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	model := cast(^rl.Model)umka.GetParam(params, 0)
	anim := cast(^rl.ModelAnimation)umka.GetParam(params, 1)
	res := rl.IsModelAnimationValid(model^, anim^ )
	result.intVal = cast(i64)res
}
				
umka_SetShaderValueV :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	locIndex := cast(^c.int)umka.GetParam(params, 1)
	value := cast(^rawptr)umka.GetParam(params, 2)
	uniformType := cast(^rl.ShaderUniformDataType)umka.GetParam(params, 3)
	count := cast(^c.int)umka.GetParam(params, 4)
	rl.SetShaderValueV(shader^, locIndex^, value^, uniformType^, count^) 
}
				
umka_DrawSplineLinear :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	points := cast(^[^]rl.Vector2)umka.GetParam(params, 0)
	pointCount := cast(^c.int)umka.GetParam(params, 1)
	thick := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawSplineLinear(points^, pointCount^, thick^, color^) 
}
				
umka_DrawRectanglePro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	origin := cast(^rl.Vector2)umka.GetParam(params, 1)
	rotation := cast(^f32)umka.GetParam(params, 2)
	color := cast(^rl.Color)umka.GetParam(params, 3)
	rl.DrawRectanglePro(rec^, origin^, rotation^, color^) 
}
				
umka_SwapScreenBuffer :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.SwapScreenBuffer()
}
				
umka_LoadFontFromMemory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileType := cast(^cstring)umka.GetParam(params, 0)
	fileData := cast(^rawptr)umka.GetParam(params, 1)
	dataSize := cast(^c.int)umka.GetParam(params, 2)
	fontSize := cast(^c.int)umka.GetParam(params, 3)
	codepoints := cast(^[^]rune)umka.GetParam(params, 4)
	codepointCount := cast(^c.int)umka.GetParam(params, 5)
	res := rl.LoadFontFromMemory(fileType^, fileData^, dataSize^, fontSize^, codepoints^, codepointCount^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_CameraYaw :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^^rl.Camera)umka.GetParam(params, 0)
	angle := cast(^f32)umka.GetParam(params, 1)
	rotateAroundTarget := cast(^bool)umka.GetParam(params, 2)
	rl.CameraYaw(camera^, angle^, rotateAroundTarget^) 
}
				
umka_DrawCapsuleWires :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector3)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	slices := cast(^c.int)umka.GetParam(params, 3)
	rings := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCapsuleWires(startPos^, endPos^, radius^, slices^, rings^, color^) 
}
				
umka_TextLength :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	rl.TextLength(text^) 
}
				
umka_ExportWaveAsCode :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	wave := cast(^rl.Wave)umka.GetParam(params, 0)
	fileName := cast(^cstring)umka.GetParam(params, 1)
	res := rl.ExportWaveAsCode(wave^, fileName^ )
	result.intVal = cast(i64)res
}
				
umka_DrawTextCodepoint :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	codepoint := cast(^rune)umka.GetParam(params, 1)
	position := cast(^rl.Vector2)umka.GetParam(params, 2)
	fontSize := cast(^f32)umka.GetParam(params, 3)
	tint := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawTextCodepoint(font^, codepoint^, position^, fontSize^, tint^) 
}
				
umka_GetGamepadButtonPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetGamepadButtonPressed()
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRectangleGradientEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rec := cast(^rl.Rectangle)umka.GetParam(params, 0)
	topLeft := cast(^rl.Color)umka.GetParam(params, 1)
	bottomLeft := cast(^rl.Color)umka.GetParam(params, 2)
	topRight := cast(^rl.Color)umka.GetParam(params, 3)
	bottomRight := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawRectangleGradientEx(rec^, topLeft^, bottomLeft^, topRight^, bottomRight^) 
}
				
umka_GetCharPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetCharPressed()
	result.intVal = cast(i64)res
}
				
umka_CheckCollisionPointRec :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	point := cast(^rl.Vector2)umka.GetParam(params, 0)
	rec := cast(^rl.Rectangle)umka.GetParam(params, 1)
	res := rl.CheckCollisionPointRec(point^, rec^ )
	result.intVal = cast(i64)res
}
				
umka_SetGamepadMappings :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	mappings := cast(^cstring)umka.GetParam(params, 0)
	rl.SetGamepadMappings(mappings^) 
}
				
umka_IsShaderValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	res := rl.IsShaderValid(shader^ )
	result.intVal = cast(i64)res
}
				
umka_GetMouseX :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetMouseX()
}
				
umka_UnloadImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	rl.UnloadImage(image^) 
}
				
umka_ClearBackground :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^rl.Color)umka.GetParam(params, 0)
	rl.ClearBackground(color^) 
}
				
umka_IsFontValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	font := cast(^rl.Font)umka.GetParam(params, 0)
	res := rl.IsFontValid(font^ )
	result.intVal = cast(i64)res
}
				
umka_ImageBlurGaussian :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	blurSize := cast(^c.int)umka.GetParam(params, 1)
	rl.ImageBlurGaussian(image^, blurSize^) 
}
				
umka_GetWorkingDirectory :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetWorkingDirectory()
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsMouseButtonUp :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	button := cast(^rl.MouseButton)umka.GetParam(params, 0)
	res := rl.IsMouseButtonUp(button^ )
	result.intVal = cast(i64)res
}
				
umka_ImageDrawTriangleEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	dst := cast(^^rl.Image)umka.GetParam(params, 0)
	v1 := cast(^rl.Vector2)umka.GetParam(params, 1)
	v2 := cast(^rl.Vector2)umka.GetParam(params, 2)
	v3 := cast(^rl.Vector2)umka.GetParam(params, 3)
	c1 := cast(^rl.Color)umka.GetParam(params, 4)
	c2 := cast(^rl.Color)umka.GetParam(params, 5)
	c3 := cast(^rl.Color)umka.GetParam(params, 6)
	rl.ImageDrawTriangleEx(dst^, v1^, v2^, v3^, c1^, c2^, c3^) 
}
				
umka_SetMaterialTexture :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	material := cast(^^rl.Material)umka.GetParam(params, 0)
	mapType := cast(^rl.MaterialMapIndex)umka.GetParam(params, 1)
	texture := cast(^rl.Texture2D)umka.GetParam(params, 2)
	rl.SetMaterialTexture(material^, mapType^, texture^) 
}
				
umka_GetMonitorPhysicalWidth :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	monitor := cast(^c.int)umka.GetParam(params, 0)
	rl.GetMonitorPhysicalWidth(monitor^) 
}
				
umka_ImageDither :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rBpp := cast(^c.int)umka.GetParam(params, 1)
	gBpp := cast(^c.int)umka.GetParam(params, 2)
	bBpp := cast(^c.int)umka.GetParam(params, 3)
	aBpp := cast(^c.int)umka.GetParam(params, 4)
	rl.ImageDither(image^, rBpp^, gBpp^, bBpp^, aBpp^) 
}
				
umka_LoadRandomSequence :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	count := cast(^c.uint)umka.GetParam(params, 0)
	min := cast(^c.int)umka.GetParam(params, 1)
	max := cast(^c.int)umka.GetParam(params, 2)
	rl.LoadRandomSequence(count^, min^, max^) 
}
				
umka_GetMouseWheelMove :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetMouseWheelMove()
	result.realVal = cast(f64)res
}
				
umka_LoadFontFromImage :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^rl.Image)umka.GetParam(params, 0)
	key := cast(^rl.Color)umka.GetParam(params, 1)
	firstChar := cast(^rune)umka.GetParam(params, 2)
	res := rl.LoadFontFromImage(image^, key^, firstChar^ )
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawPoly :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	center := cast(^rl.Vector2)umka.GetParam(params, 0)
	sides := cast(^c.int)umka.GetParam(params, 1)
	radius := cast(^f32)umka.GetParam(params, 2)
	rotation := cast(^f32)umka.GetParam(params, 3)
	color := cast(^rl.Color)umka.GetParam(params, 4)
	rl.DrawPoly(center^, sides^, radius^, rotation^, color^) 
}
				
umka_GetWindowPosition :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetWindowPosition()
	result.ptrVal = cast(rawptr)&res
}
				
umka_StopAutomationEventRecording :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.StopAutomationEventRecording()
}
				
umka_EndMode2D :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.EndMode2D()
}
				
umka_SetShaderValueMatrix :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	shader := cast(^rl.Shader)umka.GetParam(params, 0)
	locIndex := cast(^c.int)umka.GetParam(params, 1)
	mat := cast(^rl.Matrix)umka.GetParam(params, 2)
	rl.SetShaderValueMatrix(shader^, locIndex^, mat^) 
}
				
umka_LoadFontData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileData := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	fontSize := cast(^c.int)umka.GetParam(params, 2)
	codepoints := cast(^[^]rune)umka.GetParam(params, 3)
	codepointCount := cast(^c.int)umka.GetParam(params, 4)
	type := cast(^rl.FontType)umka.GetParam(params, 5)
	rl.LoadFontData(fileData^, dataSize^, fontSize^, codepoints^, codepointCount^, type^) 
}
				
umka_GetKeyPressed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetKeyPressed()
	result.ptrVal = cast(rawptr)&res
}
				
umka_DrawRay :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	ray := cast(^rl.Ray)umka.GetParam(params, 0)
	color := cast(^rl.Color)umka.GetParam(params, 1)
	rl.DrawRay(ray^, color^) 
}
				
umka_IsAudioStreamProcessed :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	stream := cast(^rl.AudioStream)umka.GetParam(params, 0)
	res := rl.IsAudioStreamProcessed(stream^ )
	result.intVal = cast(i64)res
}
				
umka_DrawCylinderWiresEx :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	startPos := cast(^rl.Vector3)umka.GetParam(params, 0)
	endPos := cast(^rl.Vector3)umka.GetParam(params, 1)
	startRadius := cast(^f32)umka.GetParam(params, 2)
	endRadius := cast(^f32)umka.GetParam(params, 3)
	sides := cast(^c.int)umka.GetParam(params, 4)
	color := cast(^rl.Color)umka.GetParam(params, 5)
	rl.DrawCylinderWiresEx(startPos^, endPos^, startRadius^, endRadius^, sides^, color^) 
}
				
umka_UnloadFontData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	glyphs := cast(^[^]rl.GlyphInfo)umka.GetParam(params, 0)
	glyphCount := cast(^c.int)umka.GetParam(params, 1)
	rl.UnloadFontData(glyphs^, glyphCount^) 
}
				
umka_CompressData :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	data := cast(^rawptr)umka.GetParam(params, 0)
	dataSize := cast(^c.int)umka.GetParam(params, 1)
	compDataSize := cast(^^c.int)umka.GetParam(params, 2)
	rl.CompressData(data^, dataSize^, compDataSize^) 
}
				
umka_DrawBillboardPro :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	camera := cast(^rl.Camera)umka.GetParam(params, 0)
	texture := cast(^rl.Texture2D)umka.GetParam(params, 1)
	source := cast(^rl.Rectangle)umka.GetParam(params, 2)
	position := cast(^rl.Vector3)umka.GetParam(params, 3)
	up := cast(^rl.Vector3)umka.GetParam(params, 4)
	size := cast(^rl.Vector2)umka.GetParam(params, 5)
	origin := cast(^rl.Vector2)umka.GetParam(params, 6)
	rotation := cast(^f32)umka.GetParam(params, 7)
	tint := cast(^rl.Color)umka.GetParam(params, 8)
	rl.DrawBillboardPro(camera^, texture^, source^, position^, up^, size^, origin^, rotation^, tint^) 
}
				
umka_ImageColorGrayscale :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	image := cast(^^rl.Image)umka.GetParam(params, 0)
	rl.ImageColorGrayscale(image^) 
}
				
umka_GetTouchX :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	rl.GetTouchX()
}
				
umka_GetFontDefault :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.GetFontDefault()
	result.ptrVal = cast(rawptr)&res
}
				
umka_IsRenderTextureValid :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	target := cast(^rl.RenderTexture2D)umka.GetParam(params, 0)
	res := rl.IsRenderTextureValid(target^ )
	result.intVal = cast(i64)res
}
				
umka_TextInsert :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	text := cast(^cstring)umka.GetParam(params, 0)
	insert := cast(^cstring)umka.GetParam(params, 1)
	position := cast(^c.int)umka.GetParam(params, 2)
	rl.TextInsert(text^, insert^, position^) 
}
				
umka_IsWindowFullscreen :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	res := rl.IsWindowFullscreen()
	result.intVal = cast(i64)res
}
				
umka_LoadFileText :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	fileName := cast(^cstring)umka.GetParam(params, 0)
	rl.LoadFileText(fileName^) 
}
				
umka_add_bindings :: proc(ctx: ^umka.Umka) {
	fmt.println("Adding TextToLower")
	umka.AddFunc(ctx, "TextToLower", umka_TextToLower)
	fmt.println("Adding TextToSnake")
	umka.AddFunc(ctx, "TextToSnake", umka_TextToSnake)
	fmt.println("Adding GetCameraRight")
	umka.AddFunc(ctx, "GetCameraRight", umka_GetCameraRight)
	fmt.println("Adding ExportWave")
	umka.AddFunc(ctx, "ExportWave", umka_ExportWave)
	fmt.println("Adding UnloadTexture")
	umka.AddFunc(ctx, "UnloadTexture", umka_UnloadTexture)
	fmt.println("Adding UnloadWaveSamples")
	umka.AddFunc(ctx, "UnloadWaveSamples", umka_UnloadWaveSamples)
	fmt.println("Adding MemRealloc")
	umka.AddFunc(ctx, "MemRealloc", umka_MemRealloc)
	fmt.println("Adding DrawBillboardRec")
	umka.AddFunc(ctx, "DrawBillboardRec", umka_DrawBillboardRec)
	fmt.println("Adding DrawModelWiresEx")
	umka.AddFunc(ctx, "DrawModelWiresEx", umka_DrawModelWiresEx)
	fmt.println("Adding UpdateCameraPro")
	umka.AddFunc(ctx, "UpdateCameraPro", umka_UpdateCameraPro)
	fmt.println("Adding SetAudioStreamPitch")
	umka.AddFunc(ctx, "SetAudioStreamPitch", umka_SetAudioStreamPitch)
	fmt.println("Adding GetScreenToWorldRay")
	umka.AddFunc(ctx, "GetScreenToWorldRay", umka_GetScreenToWorldRay)
	fmt.println("Adding GenImagePerlinNoise")
	umka.AddFunc(ctx, "GenImagePerlinNoise", umka_GenImagePerlinNoise)
	fmt.println("Adding DrawBillboard")
	umka.AddFunc(ctx, "DrawBillboard", umka_DrawBillboard)
	fmt.println("Adding PlayAudioStream")
	umka.AddFunc(ctx, "PlayAudioStream", umka_PlayAudioStream)
	fmt.println("Adding CheckCollisionCircles")
	umka.AddFunc(ctx, "CheckCollisionCircles", umka_CheckCollisionCircles)
	fmt.println("Adding SetMouseCursor")
	umka.AddFunc(ctx, "SetMouseCursor", umka_SetMouseCursor)
	fmt.println("Adding ResumeAudioStream")
	umka.AddFunc(ctx, "ResumeAudioStream", umka_ResumeAudioStream)
	fmt.println("Adding TextToUpper")
	umka.AddFunc(ctx, "TextToUpper", umka_TextToUpper)
	fmt.println("Adding DrawCircleV")
	umka.AddFunc(ctx, "DrawCircleV", umka_DrawCircleV)
	fmt.println("Adding EncodeDataBase64")
	umka.AddFunc(ctx, "EncodeDataBase64", umka_EncodeDataBase64)
	fmt.println("Adding DrawCylinderEx")
	umka.AddFunc(ctx, "DrawCylinderEx", umka_DrawCylinderEx)
	fmt.println("Adding GetGestureDetected")
	umka.AddFunc(ctx, "GetGestureDetected", umka_GetGestureDetected)
	fmt.println("Adding CheckCollisionCircleRec")
	umka.AddFunc(ctx, "CheckCollisionCircleRec", umka_CheckCollisionCircleRec)
	fmt.println("Adding IsGamepadAvailable")
	umka.AddFunc(ctx, "IsGamepadAvailable", umka_IsGamepadAvailable)
	fmt.println("Adding LoadDirectoryFiles")
	umka.AddFunc(ctx, "LoadDirectoryFiles", umka_LoadDirectoryFiles)
	fmt.println("Adding IsFileExtension")
	umka.AddFunc(ctx, "IsFileExtension", umka_IsFileExtension)
	fmt.println("Adding IsTextureValid")
	umka.AddFunc(ctx, "IsTextureValid", umka_IsTextureValid)
	fmt.println("Adding DrawCapsule")
	umka.AddFunc(ctx, "DrawCapsule", umka_DrawCapsule)
	fmt.println("Adding TextToFloat")
	umka.AddFunc(ctx, "TextToFloat", umka_TextToFloat)
	fmt.println("Adding IsGamepadButtonDown")
	umka.AddFunc(ctx, "IsGamepadButtonDown", umka_IsGamepadButtonDown)
	fmt.println("Adding ImageDrawPixel")
	umka.AddFunc(ctx, "ImageDrawPixel", umka_ImageDrawPixel)
	fmt.println("Adding LoadSoundAlias")
	umka.AddFunc(ctx, "LoadSoundAlias", umka_LoadSoundAlias)
	fmt.println("Adding PauseSound")
	umka.AddFunc(ctx, "PauseSound", umka_PauseSound)
	fmt.println("Adding PauseMusicStream")
	umka.AddFunc(ctx, "PauseMusicStream", umka_PauseMusicStream)
	fmt.println("Adding BeginTextureMode")
	umka.AddFunc(ctx, "BeginTextureMode", umka_BeginTextureMode)
	fmt.println("Adding DrawTextCodepoints")
	umka.AddFunc(ctx, "DrawTextCodepoints", umka_DrawTextCodepoints)
	fmt.println("Adding GetColor")
	umka.AddFunc(ctx, "GetColor", umka_GetColor)
	fmt.println("Adding TextAppend")
	umka.AddFunc(ctx, "TextAppend", umka_TextAppend)
	fmt.println("Adding SetMasterVolume")
	umka.AddFunc(ctx, "SetMasterVolume", umka_SetMasterVolume)
	fmt.println("Adding UnloadFileData")
	umka.AddFunc(ctx, "UnloadFileData", umka_UnloadFileData)
	fmt.println("Adding EnableCursor")
	umka.AddFunc(ctx, "EnableCursor", umka_EnableCursor)
	fmt.println("Adding DrawCircle3D")
	umka.AddFunc(ctx, "DrawCircle3D", umka_DrawCircle3D)
	fmt.println("Adding DrawSplineSegmentLinear")
	umka.AddFunc(ctx, "DrawSplineSegmentLinear", umka_DrawSplineSegmentLinear)
	fmt.println("Adding GenMeshKnot")
	umka.AddFunc(ctx, "GenMeshKnot", umka_GenMeshKnot)
	fmt.println("Adding ImageAlphaClear")
	umka.AddFunc(ctx, "ImageAlphaClear", umka_ImageAlphaClear)
	fmt.println("Adding UnloadMesh")
	umka.AddFunc(ctx, "UnloadMesh", umka_UnloadMesh)
	fmt.println("Adding GetClipboardImage")
	umka.AddFunc(ctx, "GetClipboardImage", umka_GetClipboardImage)
	fmt.println("Adding ImageColorInvert")
	umka.AddFunc(ctx, "ImageColorInvert", umka_ImageColorInvert)
	fmt.println("Adding ColorContrast")
	umka.AddFunc(ctx, "ColorContrast", umka_ColorContrast)
	fmt.println("Adding IsAudioDeviceReady")
	umka.AddFunc(ctx, "IsAudioDeviceReady", umka_IsAudioDeviceReady)
	fmt.println("Adding GenMeshCone")
	umka.AddFunc(ctx, "GenMeshCone", umka_GenMeshCone)
	fmt.println("Adding DrawModel")
	umka.AddFunc(ctx, "DrawModel", umka_DrawModel)
	fmt.println("Adding EnableEventWaiting")
	umka.AddFunc(ctx, "EnableEventWaiting", umka_EnableEventWaiting)
	fmt.println("Adding ImageDrawLineEx")
	umka.AddFunc(ctx, "ImageDrawLineEx", umka_ImageDrawLineEx)
	fmt.println("Adding SaveFileData")
	umka.AddFunc(ctx, "SaveFileData", umka_SaveFileData)
	fmt.println("Adding CameraMoveUp")
	umka.AddFunc(ctx, "CameraMoveUp", umka_CameraMoveUp)
	fmt.println("Adding DrawSplineSegmentCatmullRom")
	umka.AddFunc(ctx, "DrawSplineSegmentCatmullRom", umka_DrawSplineSegmentCatmullRom)
	fmt.println("Adding DrawTriangle")
	umka.AddFunc(ctx, "DrawTriangle", umka_DrawTriangle)
	fmt.println("Adding GetGlyphAtlasRec")
	umka.AddFunc(ctx, "GetGlyphAtlasRec", umka_GetGlyphAtlasRec)
	fmt.println("Adding CheckCollisionPointCircle")
	umka.AddFunc(ctx, "CheckCollisionPointCircle", umka_CheckCollisionPointCircle)
	fmt.println("Adding EndDrawing")
	umka.AddFunc(ctx, "EndDrawing", umka_EndDrawing)
	fmt.println("Adding MaximizeWindow")
	umka.AddFunc(ctx, "MaximizeWindow", umka_MaximizeWindow)
	fmt.println("Adding SetShaderValue")
	umka.AddFunc(ctx, "SetShaderValue", umka_SetShaderValue)
	fmt.println("Adding IsGamepadButtonPressed")
	umka.AddFunc(ctx, "IsGamepadButtonPressed", umka_IsGamepadButtonPressed)
	fmt.println("Adding ClearWindowState")
	umka.AddFunc(ctx, "ClearWindowState", umka_ClearWindowState)
	fmt.println("Adding DrawCircleLines")
	umka.AddFunc(ctx, "DrawCircleLines", umka_DrawCircleLines)
	fmt.println("Adding ImageFormat")
	umka.AddFunc(ctx, "ImageFormat", umka_ImageFormat)
	fmt.println("Adding OpenURL")
	umka.AddFunc(ctx, "OpenURL", umka_OpenURL)
	fmt.println("Adding GenImageFontAtlas")
	umka.AddFunc(ctx, "GenImageFontAtlas", umka_GenImageFontAtlas)
	fmt.println("Adding GetClipboardText")
	umka.AddFunc(ctx, "GetClipboardText", umka_GetClipboardText)
	fmt.println("Adding GetRandomValue")
	umka.AddFunc(ctx, "GetRandomValue", umka_GetRandomValue)
	fmt.println("Adding GetFileName")
	umka.AddFunc(ctx, "GetFileName", umka_GetFileName)
	fmt.println("Adding ImageFromChannel")
	umka.AddFunc(ctx, "ImageFromChannel", umka_ImageFromChannel)
	fmt.println("Adding GetGestureDragAngle")
	umka.AddFunc(ctx, "GetGestureDragAngle", umka_GetGestureDragAngle)
	fmt.println("Adding DrawPolyLinesEx")
	umka.AddFunc(ctx, "DrawPolyLinesEx", umka_DrawPolyLinesEx)
	fmt.println("Adding DrawPixelV")
	umka.AddFunc(ctx, "DrawPixelV", umka_DrawPixelV)
	fmt.println("Adding IsKeyPressedRepeat")
	umka.AddFunc(ctx, "IsKeyPressedRepeat", umka_IsKeyPressedRepeat)
	fmt.println("Adding UnloadUTF8")
	umka.AddFunc(ctx, "UnloadUTF8", umka_UnloadUTF8)
	fmt.println("Adding UnloadImagePalette")
	umka.AddFunc(ctx, "UnloadImagePalette", umka_UnloadImagePalette)
	fmt.println("Adding UpdateAudioStream")
	umka.AddFunc(ctx, "UpdateAudioStream", umka_UpdateAudioStream)
	fmt.println("Adding IsKeyUp")
	umka.AddFunc(ctx, "IsKeyUp", umka_IsKeyUp)
	fmt.println("Adding GenMeshTangents")
	umka.AddFunc(ctx, "GenMeshTangents", umka_GenMeshTangents)
	fmt.println("Adding UnloadFileText")
	umka.AddFunc(ctx, "UnloadFileText", umka_UnloadFileText)
	fmt.println("Adding SetMouseScale")
	umka.AddFunc(ctx, "SetMouseScale", umka_SetMouseScale)
	fmt.println("Adding ImageDrawRectangleRec")
	umka.AddFunc(ctx, "ImageDrawRectangleRec", umka_ImageDrawRectangleRec)
	fmt.println("Adding UnloadImageColors")
	umka.AddFunc(ctx, "UnloadImageColors", umka_UnloadImageColors)
	fmt.println("Adding DirectoryExists")
	umka.AddFunc(ctx, "DirectoryExists", umka_DirectoryExists)
	fmt.println("Adding DecodeDataBase64")
	umka.AddFunc(ctx, "DecodeDataBase64", umka_DecodeDataBase64)
	fmt.println("Adding DrawTextEx")
	umka.AddFunc(ctx, "DrawTextEx", umka_DrawTextEx)
	fmt.println("Adding DrawEllipseLines")
	umka.AddFunc(ctx, "DrawEllipseLines", umka_DrawEllipseLines)
	fmt.println("Adding GetGestureHoldDuration")
	umka.AddFunc(ctx, "GetGestureHoldDuration", umka_GetGestureHoldDuration)
	fmt.println("Adding GetWindowScaleDPI")
	umka.AddFunc(ctx, "GetWindowScaleDPI", umka_GetWindowScaleDPI)
	fmt.println("Adding CheckCollisionBoxes")
	umka.AddFunc(ctx, "CheckCollisionBoxes", umka_CheckCollisionBoxes)
	fmt.println("Adding PlayMusicStream")
	umka.AddFunc(ctx, "PlayMusicStream", umka_PlayMusicStream)
	fmt.println("Adding GetTouchPointCount")
	umka.AddFunc(ctx, "GetTouchPointCount", umka_GetTouchPointCount)
	fmt.println("Adding ColorToHSV")
	umka.AddFunc(ctx, "ColorToHSV", umka_ColorToHSV)
	fmt.println("Adding LoadWaveFromMemory")
	umka.AddFunc(ctx, "LoadWaveFromMemory", umka_LoadWaveFromMemory)
	fmt.println("Adding CheckCollisionBoxSphere")
	umka.AddFunc(ctx, "CheckCollisionBoxSphere", umka_CheckCollisionBoxSphere)
	fmt.println("Adding SetSoundVolume")
	umka.AddFunc(ctx, "SetSoundVolume", umka_SetSoundVolume)
	fmt.println("Adding IsGamepadButtonReleased")
	umka.AddFunc(ctx, "IsGamepadButtonReleased", umka_IsGamepadButtonReleased)
	fmt.println("Adding SetGesturesEnabled")
	umka.AddFunc(ctx, "SetGesturesEnabled", umka_SetGesturesEnabled)
	fmt.println("Adding StopAudioStream")
	umka.AddFunc(ctx, "StopAudioStream", umka_StopAudioStream)
	fmt.println("Adding ImageResizeNN")
	umka.AddFunc(ctx, "ImageResizeNN", umka_ImageResizeNN)
	fmt.println("Adding Fade")
	umka.AddFunc(ctx, "Fade", umka_Fade)
	fmt.println("Adding SetTextLineSpacing")
	umka.AddFunc(ctx, "SetTextLineSpacing", umka_SetTextLineSpacing)
	fmt.println("Adding BeginBlendMode")
	umka.AddFunc(ctx, "BeginBlendMode", umka_BeginBlendMode)
	fmt.println("Adding GetGamepadAxisMovement")
	umka.AddFunc(ctx, "GetGamepadAxisMovement", umka_GetGamepadAxisMovement)
	fmt.println("Adding DrawPlane")
	umka.AddFunc(ctx, "DrawPlane", umka_DrawPlane)
	fmt.println("Adding GetRayCollisionBox")
	umka.AddFunc(ctx, "GetRayCollisionBox", umka_GetRayCollisionBox)
	fmt.println("Adding GenImageColor")
	umka.AddFunc(ctx, "GenImageColor", umka_GenImageColor)
	fmt.println("Adding GetRayCollisionTriangle")
	umka.AddFunc(ctx, "GetRayCollisionTriangle", umka_GetRayCollisionTriangle)
	fmt.println("Adding DrawRectangle")
	umka.AddFunc(ctx, "DrawRectangle", umka_DrawRectangle)
	fmt.println("Adding ImageDrawRectangleLines")
	umka.AddFunc(ctx, "ImageDrawRectangleLines", umka_ImageDrawRectangleLines)
	fmt.println("Adding ComputeCRC32")
	umka.AddFunc(ctx, "ComputeCRC32", umka_ComputeCRC32)
	fmt.println("Adding DrawLineV")
	umka.AddFunc(ctx, "DrawLineV", umka_DrawLineV)
	fmt.println("Adding ColorTint")
	umka.AddFunc(ctx, "ColorTint", umka_ColorTint)
	fmt.println("Adding MeasureTextEx")
	umka.AddFunc(ctx, "MeasureTextEx", umka_MeasureTextEx)
	fmt.println("Adding CheckCollisionPointPoly")
	umka.AddFunc(ctx, "CheckCollisionPointPoly", umka_CheckCollisionPointPoly)
	fmt.println("Adding BeginDrawing")
	umka.AddFunc(ctx, "BeginDrawing", umka_BeginDrawing)
	fmt.println("Adding ComputeSHA1")
	umka.AddFunc(ctx, "ComputeSHA1", umka_ComputeSHA1)
	fmt.println("Adding TextSubtext")
	umka.AddFunc(ctx, "TextSubtext", umka_TextSubtext)
	fmt.println("Adding LoadFont")
	umka.AddFunc(ctx, "LoadFont", umka_LoadFont)
	fmt.println("Adding GetRayCollisionQuad")
	umka.AddFunc(ctx, "GetRayCollisionQuad", umka_GetRayCollisionQuad)
	fmt.println("Adding GetCameraMatrix2D")
	umka.AddFunc(ctx, "GetCameraMatrix2D", umka_GetCameraMatrix2D)
	fmt.println("Adding UpdateTextureRec")
	umka.AddFunc(ctx, "UpdateTextureRec", umka_UpdateTextureRec)
	fmt.println("Adding TextReplace")
	umka.AddFunc(ctx, "TextReplace", umka_TextReplace)
	fmt.println("Adding GenImageWhiteNoise")
	umka.AddFunc(ctx, "GenImageWhiteNoise", umka_GenImageWhiteNoise)
	fmt.println("Adding UpdateCamera")
	umka.AddFunc(ctx, "UpdateCamera", umka_UpdateCamera)
	fmt.println("Adding UpdateSound")
	umka.AddFunc(ctx, "UpdateSound", umka_UpdateSound)
	fmt.println("Adding GetDirectoryPath")
	umka.AddFunc(ctx, "GetDirectoryPath", umka_GetDirectoryPath)
	fmt.println("Adding GetMonitorCount")
	umka.AddFunc(ctx, "GetMonitorCount", umka_GetMonitorCount)
	fmt.println("Adding StopMusicStream")
	umka.AddFunc(ctx, "StopMusicStream", umka_StopMusicStream)
	fmt.println("Adding ShowCursor")
	umka.AddFunc(ctx, "ShowCursor", umka_ShowCursor)
	fmt.println("Adding LoadUTF8")
	umka.AddFunc(ctx, "LoadUTF8", umka_LoadUTF8)
	fmt.println("Adding GetMasterVolume")
	umka.AddFunc(ctx, "GetMasterVolume", umka_GetMasterVolume)
	fmt.println("Adding IsKeyPressed")
	umka.AddFunc(ctx, "IsKeyPressed", umka_IsKeyPressed)
	fmt.println("Adding BeginMode2D")
	umka.AddFunc(ctx, "BeginMode2D", umka_BeginMode2D)
	fmt.println("Adding TextToInteger")
	umka.AddFunc(ctx, "TextToInteger", umka_TextToInteger)
	fmt.println("Adding LoadModelAnimations")
	umka.AddFunc(ctx, "LoadModelAnimations", umka_LoadModelAnimations)
	fmt.println("Adding IsMusicValid")
	umka.AddFunc(ctx, "IsMusicValid", umka_IsMusicValid)
	fmt.println("Adding BeginShaderMode")
	umka.AddFunc(ctx, "BeginShaderMode", umka_BeginShaderMode)
	fmt.println("Adding LoadWave")
	umka.AddFunc(ctx, "LoadWave", umka_LoadWave)
	fmt.println("Adding LoadShader")
	umka.AddFunc(ctx, "LoadShader", umka_LoadShader)
	fmt.println("Adding IsMusicStreamPlaying")
	umka.AddFunc(ctx, "IsMusicStreamPlaying", umka_IsMusicStreamPlaying)
	fmt.println("Adding StopSound")
	umka.AddFunc(ctx, "StopSound", umka_StopSound)
	fmt.println("Adding GetCameraForward")
	umka.AddFunc(ctx, "GetCameraForward", umka_GetCameraForward)
	fmt.println("Adding GetSplinePointBasis")
	umka.AddFunc(ctx, "GetSplinePointBasis", umka_GetSplinePointBasis)
	fmt.println("Adding ResumeMusicStream")
	umka.AddFunc(ctx, "ResumeMusicStream", umka_ResumeMusicStream)
	fmt.println("Adding DrawLineBezier")
	umka.AddFunc(ctx, "DrawLineBezier", umka_DrawLineBezier)
	fmt.println("Adding DisableEventWaiting")
	umka.AddFunc(ctx, "DisableEventWaiting", umka_DisableEventWaiting)
	fmt.println("Adding ImageDraw")
	umka.AddFunc(ctx, "ImageDraw", umka_ImageDraw)
	fmt.println("Adding WindowShouldClose")
	umka.AddFunc(ctx, "WindowShouldClose", umka_WindowShouldClose)
	fmt.println("Adding ImageText")
	umka.AddFunc(ctx, "ImageText", umka_ImageText)
	fmt.println("Adding DrawRingLines")
	umka.AddFunc(ctx, "DrawRingLines", umka_DrawRingLines)
	fmt.println("Adding ImageTextEx")
	umka.AddFunc(ctx, "ImageTextEx", umka_ImageTextEx)
	fmt.println("Adding ExportMesh")
	umka.AddFunc(ctx, "ExportMesh", umka_ExportMesh)
	fmt.println("Adding SetSoundPan")
	umka.AddFunc(ctx, "SetSoundPan", umka_SetSoundPan)
	fmt.println("Adding CheckCollisionRecs")
	umka.AddFunc(ctx, "CheckCollisionRecs", umka_CheckCollisionRecs)
	fmt.println("Adding UnloadAudioStream")
	umka.AddFunc(ctx, "UnloadAudioStream", umka_UnloadAudioStream)
	fmt.println("Adding GenMeshTorus")
	umka.AddFunc(ctx, "GenMeshTorus", umka_GenMeshTorus)
	fmt.println("Adding ColorToInt")
	umka.AddFunc(ctx, "ColorToInt", umka_ColorToInt)
	fmt.println("Adding ImageDrawText")
	umka.AddFunc(ctx, "ImageDrawText", umka_ImageDrawText)
	fmt.println("Adding GetRenderWidth")
	umka.AddFunc(ctx, "GetRenderWidth", umka_GetRenderWidth)
	fmt.println("Adding GenImageGradientRadial")
	umka.AddFunc(ctx, "GenImageGradientRadial", umka_GenImageGradientRadial)
	fmt.println("Adding GetSplinePointBezierCubic")
	umka.AddFunc(ctx, "GetSplinePointBezierCubic", umka_GetSplinePointBezierCubic)
	fmt.println("Adding DrawCircleLinesV")
	umka.AddFunc(ctx, "DrawCircleLinesV", umka_DrawCircleLinesV)
	fmt.println("Adding DrawModelPointsEx")
	umka.AddFunc(ctx, "DrawModelPointsEx", umka_DrawModelPointsEx)
	fmt.println("Adding DrawTriangleStrip3D")
	umka.AddFunc(ctx, "DrawTriangleStrip3D", umka_DrawTriangleStrip3D)
	fmt.println("Adding SeekMusicStream")
	umka.AddFunc(ctx, "SeekMusicStream", umka_SeekMusicStream)
	fmt.println("Adding DrawRectangleLinesEx")
	umka.AddFunc(ctx, "DrawRectangleLinesEx", umka_DrawRectangleLinesEx)
	fmt.println("Adding ImageDrawTriangleStrip")
	umka.AddFunc(ctx, "ImageDrawTriangleStrip", umka_ImageDrawTriangleStrip)
	fmt.println("Adding IsWindowResized")
	umka.AddFunc(ctx, "IsWindowResized", umka_IsWindowResized)
	fmt.println("Adding SetConfigFlags")
	umka.AddFunc(ctx, "SetConfigFlags", umka_SetConfigFlags)
	fmt.println("Adding DrawLine")
	umka.AddFunc(ctx, "DrawLine", umka_DrawLine)
	fmt.println("Adding GetCameraMatrix")
	umka.AddFunc(ctx, "GetCameraMatrix", umka_GetCameraMatrix)
	fmt.println("Adding DrawSphereEx")
	umka.AddFunc(ctx, "DrawSphereEx", umka_DrawSphereEx)
	fmt.println("Adding CheckCollisionCircleLine")
	umka.AddFunc(ctx, "CheckCollisionCircleLine", umka_CheckCollisionCircleLine)
	fmt.println("Adding GetShaderLocation")
	umka.AddFunc(ctx, "GetShaderLocation", umka_GetShaderLocation)
	fmt.println("Adding DrawRectangleGradientV")
	umka.AddFunc(ctx, "DrawRectangleGradientV", umka_DrawRectangleGradientV)
	fmt.println("Adding UnloadSoundAlias")
	umka.AddFunc(ctx, "UnloadSoundAlias", umka_UnloadSoundAlias)
	fmt.println("Adding GetScreenToWorld2D")
	umka.AddFunc(ctx, "GetScreenToWorld2D", umka_GetScreenToWorld2D)
	fmt.println("Adding MakeDirectory")
	umka.AddFunc(ctx, "MakeDirectory", umka_MakeDirectory)
	fmt.println("Adding TextIsEqual")
	umka.AddFunc(ctx, "TextIsEqual", umka_TextIsEqual)
	fmt.println("Adding GetGestureDragVector")
	umka.AddFunc(ctx, "GetGestureDragVector", umka_GetGestureDragVector)
	fmt.println("Adding SetAudioStreamBufferSizeDefault")
	umka.AddFunc(ctx, "SetAudioStreamBufferSizeDefault", umka_SetAudioStreamBufferSizeDefault)
	fmt.println("Adding GetFileExtension")
	umka.AddFunc(ctx, "GetFileExtension", umka_GetFileExtension)
	fmt.println("Adding LoadDirectoryFilesEx")
	umka.AddFunc(ctx, "LoadDirectoryFilesEx", umka_LoadDirectoryFilesEx)
	fmt.println("Adding ImageRotate")
	umka.AddFunc(ctx, "ImageRotate", umka_ImageRotate)
	fmt.println("Adding SetMusicPitch")
	umka.AddFunc(ctx, "SetMusicPitch", umka_SetMusicPitch)
	fmt.println("Adding GetGamepadAxisCount")
	umka.AddFunc(ctx, "GetGamepadAxisCount", umka_GetGamepadAxisCount)
	fmt.println("Adding DrawTriangleStrip")
	umka.AddFunc(ctx, "DrawTriangleStrip", umka_DrawTriangleStrip)
	fmt.println("Adding ImageClearBackground")
	umka.AddFunc(ctx, "ImageClearBackground", umka_ImageClearBackground)
	fmt.println("Adding UnloadMaterial")
	umka.AddFunc(ctx, "UnloadMaterial", umka_UnloadMaterial)
	fmt.println("Adding DrawRectangleRounded")
	umka.AddFunc(ctx, "DrawRectangleRounded", umka_DrawRectangleRounded)
	fmt.println("Adding GetScreenHeight")
	umka.AddFunc(ctx, "GetScreenHeight", umka_GetScreenHeight)
	fmt.println("Adding DrawSplineCatmullRom")
	umka.AddFunc(ctx, "DrawSplineCatmullRom", umka_DrawSplineCatmullRom)
	fmt.println("Adding HideCursor")
	umka.AddFunc(ctx, "HideCursor", umka_HideCursor)
	fmt.println("Adding LoadCodepoints")
	umka.AddFunc(ctx, "LoadCodepoints", umka_LoadCodepoints)
	fmt.println("Adding CameraMoveForward")
	umka.AddFunc(ctx, "CameraMoveForward", umka_CameraMoveForward)
	fmt.println("Adding PauseAudioStream")
	umka.AddFunc(ctx, "PauseAudioStream", umka_PauseAudioStream)
	fmt.println("Adding ImageDrawCircleV")
	umka.AddFunc(ctx, "ImageDrawCircleV", umka_ImageDrawCircleV)
	fmt.println("Adding TakeScreenshot")
	umka.AddFunc(ctx, "TakeScreenshot", umka_TakeScreenshot)
	fmt.println("Adding GetWorldToScreen")
	umka.AddFunc(ctx, "GetWorldToScreen", umka_GetWorldToScreen)
	fmt.println("Adding GetMusicTimePlayed")
	umka.AddFunc(ctx, "GetMusicTimePlayed", umka_GetMusicTimePlayed)
	fmt.println("Adding GetImageColor")
	umka.AddFunc(ctx, "GetImageColor", umka_GetImageColor)
	fmt.println("Adding DrawSplineBezierCubic")
	umka.AddFunc(ctx, "DrawSplineBezierCubic", umka_DrawSplineBezierCubic)
	fmt.println("Adding DrawEllipse")
	umka.AddFunc(ctx, "DrawEllipse", umka_DrawEllipse)
	fmt.println("Adding LoadShaderFromMemory")
	umka.AddFunc(ctx, "LoadShaderFromMemory", umka_LoadShaderFromMemory)
	fmt.println("Adding ToggleBorderlessWindowed")
	umka.AddFunc(ctx, "ToggleBorderlessWindowed", umka_ToggleBorderlessWindowed)
	fmt.println("Adding SetGamepadVibration")
	umka.AddFunc(ctx, "SetGamepadVibration", umka_SetGamepadVibration)
	fmt.println("Adding DrawRectangleGradientH")
	umka.AddFunc(ctx, "DrawRectangleGradientH", umka_DrawRectangleGradientH)
	fmt.println("Adding ColorIsEqual")
	umka.AddFunc(ctx, "ColorIsEqual", umka_ColorIsEqual)
	fmt.println("Adding UpdateModelAnimationBones")
	umka.AddFunc(ctx, "UpdateModelAnimationBones", umka_UpdateModelAnimationBones)
	fmt.println("Adding GetMouseY")
	umka.AddFunc(ctx, "GetMouseY", umka_GetMouseY)
	fmt.println("Adding UnloadRenderTexture")
	umka.AddFunc(ctx, "UnloadRenderTexture", umka_UnloadRenderTexture)
	fmt.println("Adding PollInputEvents")
	umka.AddFunc(ctx, "PollInputEvents", umka_PollInputEvents)
	fmt.println("Adding LoadImageColors")
	umka.AddFunc(ctx, "LoadImageColors", umka_LoadImageColors)
	fmt.println("Adding LoadModel")
	umka.AddFunc(ctx, "LoadModel", umka_LoadModel)
	fmt.println("Adding CameraMoveToTarget")
	umka.AddFunc(ctx, "CameraMoveToTarget", umka_CameraMoveToTarget)
	fmt.println("Adding GenMeshHeightmap")
	umka.AddFunc(ctx, "GenMeshHeightmap", umka_GenMeshHeightmap)
	fmt.println("Adding DrawFPS")
	umka.AddFunc(ctx, "DrawFPS", umka_DrawFPS)
	fmt.println("Adding DrawRectangleLines")
	umka.AddFunc(ctx, "DrawRectangleLines", umka_DrawRectangleLines)
	fmt.println("Adding IsWindowMinimized")
	umka.AddFunc(ctx, "IsWindowMinimized", umka_IsWindowMinimized)
	fmt.println("Adding ImageColorTint")
	umka.AddFunc(ctx, "ImageColorTint", umka_ImageColorTint)
	fmt.println("Adding GetShapesTextureRectangle")
	umka.AddFunc(ctx, "GetShapesTextureRectangle", umka_GetShapesTextureRectangle)
	fmt.println("Adding DrawCircleSector")
	umka.AddFunc(ctx, "DrawCircleSector", umka_DrawCircleSector)
	fmt.println("Adding ExportMeshAsCode")
	umka.AddFunc(ctx, "ExportMeshAsCode", umka_ExportMeshAsCode)
	fmt.println("Adding GetTouchPointId")
	umka.AddFunc(ctx, "GetTouchPointId", umka_GetTouchPointId)
	fmt.println("Adding DrawBoundingBox")
	umka.AddFunc(ctx, "DrawBoundingBox", umka_DrawBoundingBox)
	fmt.println("Adding IsFileNameValid")
	umka.AddFunc(ctx, "IsFileNameValid", umka_IsFileNameValid)
	fmt.println("Adding GetRenderHeight")
	umka.AddFunc(ctx, "GetRenderHeight", umka_GetRenderHeight)
	fmt.println("Adding GetWorldToScreen2D")
	umka.AddFunc(ctx, "GetWorldToScreen2D", umka_GetWorldToScreen2D)
	fmt.println("Adding GenMeshCube")
	umka.AddFunc(ctx, "GenMeshCube", umka_GenMeshCube)
	fmt.println("Adding SetWindowSize")
	umka.AddFunc(ctx, "SetWindowSize", umka_SetWindowSize)
	fmt.println("Adding SetWindowFocused")
	umka.AddFunc(ctx, "SetWindowFocused", umka_SetWindowFocused)
	fmt.println("Adding ExportFontAsCode")
	umka.AddFunc(ctx, "ExportFontAsCode", umka_ExportFontAsCode)
	fmt.println("Adding GetTouchY")
	umka.AddFunc(ctx, "GetTouchY", umka_GetTouchY)
	fmt.println("Adding GetWindowHandle")
	umka.AddFunc(ctx, "GetWindowHandle", umka_GetWindowHandle)
	fmt.println("Adding DrawRectangleV")
	umka.AddFunc(ctx, "DrawRectangleV", umka_DrawRectangleV)
	fmt.println("Adding EndScissorMode")
	umka.AddFunc(ctx, "EndScissorMode", umka_EndScissorMode)
	fmt.println("Adding GetCameraProjectionMatrix")
	umka.AddFunc(ctx, "GetCameraProjectionMatrix", umka_GetCameraProjectionMatrix)
	fmt.println("Adding ExportAutomationEventList")
	umka.AddFunc(ctx, "ExportAutomationEventList", umka_ExportAutomationEventList)
	fmt.println("Adding IsKeyDown")
	umka.AddFunc(ctx, "IsKeyDown", umka_IsKeyDown)
	fmt.println("Adding GetGamepadName")
	umka.AddFunc(ctx, "GetGamepadName", umka_GetGamepadName)
	fmt.println("Adding GetTouchPosition")
	umka.AddFunc(ctx, "GetTouchPosition", umka_GetTouchPosition)
	fmt.println("Adding BeginMode3D")
	umka.AddFunc(ctx, "BeginMode3D", umka_BeginMode3D)
	fmt.println("Adding SetWindowMonitor")
	umka.AddFunc(ctx, "SetWindowMonitor", umka_SetWindowMonitor)
	fmt.println("Adding TextToCamel")
	umka.AddFunc(ctx, "TextToCamel", umka_TextToCamel)
	fmt.println("Adding GenMeshSphere")
	umka.AddFunc(ctx, "GenMeshSphere", umka_GenMeshSphere)
	fmt.println("Adding IsMouseButtonReleased")
	umka.AddFunc(ctx, "IsMouseButtonReleased", umka_IsMouseButtonReleased)
	fmt.println("Adding SetAutomationEventList")
	umka.AddFunc(ctx, "SetAutomationEventList", umka_SetAutomationEventList)
	fmt.println("Adding GenImageCellular")
	umka.AddFunc(ctx, "GenImageCellular", umka_GenImageCellular)
	fmt.println("Adding DrawSplineSegmentBezierQuadratic")
	umka.AddFunc(ctx, "DrawSplineSegmentBezierQuadratic", umka_DrawSplineSegmentBezierQuadratic)
	fmt.println("Adding BeginScissorMode")
	umka.AddFunc(ctx, "BeginScissorMode", umka_BeginScissorMode)
	fmt.println("Adding DecompressData")
	umka.AddFunc(ctx, "DecompressData", umka_DecompressData)
	fmt.println("Adding WaveCrop")
	umka.AddFunc(ctx, "WaveCrop", umka_WaveCrop)
	fmt.println("Adding GenImageChecked")
	umka.AddFunc(ctx, "GenImageChecked", umka_GenImageChecked)
	fmt.println("Adding SetRandomSeed")
	umka.AddFunc(ctx, "SetRandomSeed", umka_SetRandomSeed)
	fmt.println("Adding UnloadWave")
	umka.AddFunc(ctx, "UnloadWave", umka_UnloadWave)
	fmt.println("Adding GetMonitorPosition")
	umka.AddFunc(ctx, "GetMonitorPosition", umka_GetMonitorPosition)
	fmt.println("Adding IsWindowHidden")
	umka.AddFunc(ctx, "IsWindowHidden", umka_IsWindowHidden)
	fmt.println("Adding GetMonitorWidth")
	umka.AddFunc(ctx, "GetMonitorWidth", umka_GetMonitorWidth)
	fmt.println("Adding CameraRoll")
	umka.AddFunc(ctx, "CameraRoll", umka_CameraRoll)
	fmt.println("Adding DrawPoint3D")
	umka.AddFunc(ctx, "DrawPoint3D", umka_DrawPoint3D)
	fmt.println("Adding DrawTriangleFan")
	umka.AddFunc(ctx, "DrawTriangleFan", umka_DrawTriangleFan)
	fmt.println("Adding LoadMusicStreamFromMemory")
	umka.AddFunc(ctx, "LoadMusicStreamFromMemory", umka_LoadMusicStreamFromMemory)
	fmt.println("Adding DrawRing")
	umka.AddFunc(ctx, "DrawRing", umka_DrawRing)
	fmt.println("Adding GenImageGradientLinear")
	umka.AddFunc(ctx, "GenImageGradientLinear", umka_GenImageGradientLinear)
	fmt.println("Adding GetPixelColor")
	umka.AddFunc(ctx, "GetPixelColor", umka_GetPixelColor)
	fmt.println("Adding GetMouseWheelMoveV")
	umka.AddFunc(ctx, "GetMouseWheelMoveV", umka_GetMouseWheelMoveV)
	fmt.println("Adding CameraPitch")
	umka.AddFunc(ctx, "CameraPitch", umka_CameraPitch)
	fmt.println("Adding DrawLineStrip")
	umka.AddFunc(ctx, "DrawLineStrip", umka_DrawLineStrip)
	fmt.println("Adding SetMusicPan")
	umka.AddFunc(ctx, "SetMusicPan", umka_SetMusicPan)
	fmt.println("Adding UpdateTexture")
	umka.AddFunc(ctx, "UpdateTexture", umka_UpdateTexture)
	fmt.println("Adding ToggleFullscreen")
	umka.AddFunc(ctx, "ToggleFullscreen", umka_ToggleFullscreen)
	fmt.println("Adding UploadMesh")
	umka.AddFunc(ctx, "UploadMesh", umka_UploadMesh)
	fmt.println("Adding TextCopy")
	umka.AddFunc(ctx, "TextCopy", umka_TextCopy)
	fmt.println("Adding SetTextureFilter")
	umka.AddFunc(ctx, "SetTextureFilter", umka_SetTextureFilter)
	fmt.println("Adding LoadTextureFromImage")
	umka.AddFunc(ctx, "LoadTextureFromImage", umka_LoadTextureFromImage)
	fmt.println("Adding IsAudioStreamValid")
	umka.AddFunc(ctx, "IsAudioStreamValid", umka_IsAudioStreamValid)
	fmt.println("Adding SetTextureWrap")
	umka.AddFunc(ctx, "SetTextureWrap", umka_SetTextureWrap)
	fmt.println("Adding GetCodepointCount")
	umka.AddFunc(ctx, "GetCodepointCount", umka_GetCodepointCount)
	fmt.println("Adding GetSplinePointBezierQuad")
	umka.AddFunc(ctx, "GetSplinePointBezierQuad", umka_GetSplinePointBezierQuad)
	fmt.println("Adding DrawCubeWires")
	umka.AddFunc(ctx, "DrawCubeWires", umka_DrawCubeWires)
	fmt.println("Adding SetWindowPosition")
	umka.AddFunc(ctx, "SetWindowPosition", umka_SetWindowPosition)
	fmt.println("Adding GenMeshPoly")
	umka.AddFunc(ctx, "GenMeshPoly", umka_GenMeshPoly)
	fmt.println("Adding IsModelValid")
	umka.AddFunc(ctx, "IsModelValid", umka_IsModelValid)
	fmt.println("Adding DrawTextureV")
	umka.AddFunc(ctx, "DrawTextureV", umka_DrawTextureV)
	fmt.println("Adding GenMeshPlane")
	umka.AddFunc(ctx, "GenMeshPlane", umka_GenMeshPlane)
	fmt.println("Adding GetTime")
	umka.AddFunc(ctx, "GetTime", umka_GetTime)
	fmt.println("Adding IsCursorHidden")
	umka.AddFunc(ctx, "IsCursorHidden", umka_IsCursorHidden)
	fmt.println("Adding ImageFlipVertical")
	umka.AddFunc(ctx, "ImageFlipVertical", umka_ImageFlipVertical)
	fmt.println("Adding GetShapesTexture")
	umka.AddFunc(ctx, "GetShapesTexture", umka_GetShapesTexture)
	fmt.println("Adding GetCameraUp")
	umka.AddFunc(ctx, "GetCameraUp", umka_GetCameraUp)
	fmt.println("Adding GetFPS")
	umka.AddFunc(ctx, "GetFPS", umka_GetFPS)
	fmt.println("Adding DrawRectangleRec")
	umka.AddFunc(ctx, "DrawRectangleRec", umka_DrawRectangleRec)
	fmt.println("Adding IsCursorOnScreen")
	umka.AddFunc(ctx, "IsCursorOnScreen", umka_IsCursorOnScreen)
	fmt.println("Adding DrawSphere")
	umka.AddFunc(ctx, "DrawSphere", umka_DrawSphere)
	fmt.println("Adding LoadImageAnim")
	umka.AddFunc(ctx, "LoadImageAnim", umka_LoadImageAnim)
	fmt.println("Adding SetSoundPitch")
	umka.AddFunc(ctx, "SetSoundPitch", umka_SetSoundPitch)
	fmt.println("Adding GetFileNameWithoutExt")
	umka.AddFunc(ctx, "GetFileNameWithoutExt", umka_GetFileNameWithoutExt)
	fmt.println("Adding UnloadMusicStream")
	umka.AddFunc(ctx, "UnloadMusicStream", umka_UnloadMusicStream)
	fmt.println("Adding ImageAlphaMask")
	umka.AddFunc(ctx, "ImageAlphaMask", umka_ImageAlphaMask)
	fmt.println("Adding SetWindowTitle")
	umka.AddFunc(ctx, "SetWindowTitle", umka_SetWindowTitle)
	fmt.println("Adding DrawSplineSegmentBasis")
	umka.AddFunc(ctx, "DrawSplineSegmentBasis", umka_DrawSplineSegmentBasis)
	fmt.println("Adding ImageRotateCW")
	umka.AddFunc(ctx, "ImageRotateCW", umka_ImageRotateCW)
	fmt.println("Adding SetWindowOpacity")
	umka.AddFunc(ctx, "SetWindowOpacity", umka_SetWindowOpacity)
	fmt.println("Adding ImageColorContrast")
	umka.AddFunc(ctx, "ImageColorContrast", umka_ImageColorContrast)
	fmt.println("Adding MinimizeWindow")
	umka.AddFunc(ctx, "MinimizeWindow", umka_MinimizeWindow)
	fmt.println("Adding GetMeshBoundingBox")
	umka.AddFunc(ctx, "GetMeshBoundingBox", umka_GetMeshBoundingBox)
	fmt.println("Adding SetMouseOffset")
	umka.AddFunc(ctx, "SetMouseOffset", umka_SetMouseOffset)
	fmt.println("Adding InitWindow")
	umka.AddFunc(ctx, "InitWindow", umka_InitWindow)
	fmt.println("Adding LoadMaterials")
	umka.AddFunc(ctx, "LoadMaterials", umka_LoadMaterials)
	fmt.println("Adding IsKeyReleased")
	umka.AddFunc(ctx, "IsKeyReleased", umka_IsKeyReleased)
	fmt.println("Adding FileExists")
	umka.AddFunc(ctx, "FileExists", umka_FileExists)
	fmt.println("Adding EndShaderMode")
	umka.AddFunc(ctx, "EndShaderMode", umka_EndShaderMode)
	fmt.println("Adding IsFileDropped")
	umka.AddFunc(ctx, "IsFileDropped", umka_IsFileDropped)
	fmt.println("Adding GetSplinePointCatmullRom")
	umka.AddFunc(ctx, "GetSplinePointCatmullRom", umka_GetSplinePointCatmullRom)
	fmt.println("Adding GetCodepointPrevious")
	umka.AddFunc(ctx, "GetCodepointPrevious", umka_GetCodepointPrevious)
	fmt.println("Adding CheckCollisionSpheres")
	umka.AddFunc(ctx, "CheckCollisionSpheres", umka_CheckCollisionSpheres)
	fmt.println("Adding GetMonitorRefreshRate")
	umka.AddFunc(ctx, "GetMonitorRefreshRate", umka_GetMonitorRefreshRate)
	fmt.println("Adding DrawCubeWiresV")
	umka.AddFunc(ctx, "DrawCubeWiresV", umka_DrawCubeWiresV)
	fmt.println("Adding SetClipboardText")
	umka.AddFunc(ctx, "SetClipboardText", umka_SetClipboardText)
	fmt.println("Adding DrawText")
	umka.AddFunc(ctx, "DrawText", umka_DrawText)
	fmt.println("Adding LoadAutomationEventList")
	umka.AddFunc(ctx, "LoadAutomationEventList", umka_LoadAutomationEventList)
	fmt.println("Adding EndMode3D")
	umka.AddFunc(ctx, "EndMode3D", umka_EndMode3D)
	fmt.println("Adding DrawModelPoints")
	umka.AddFunc(ctx, "DrawModelPoints", umka_DrawModelPoints)
	fmt.println("Adding ImageDrawCircle")
	umka.AddFunc(ctx, "ImageDrawCircle", umka_ImageDrawCircle)
	fmt.println("Adding ResumeSound")
	umka.AddFunc(ctx, "ResumeSound", umka_ResumeSound)
	fmt.println("Adding UnloadDroppedFiles")
	umka.AddFunc(ctx, "UnloadDroppedFiles", umka_UnloadDroppedFiles)
	fmt.println("Adding SetMousePosition")
	umka.AddFunc(ctx, "SetMousePosition", umka_SetMousePosition)
	fmt.println("Adding GetSplinePointLinear")
	umka.AddFunc(ctx, "GetSplinePointLinear", umka_GetSplinePointLinear)
	fmt.println("Adding CloseWindow")
	umka.AddFunc(ctx, "CloseWindow", umka_CloseWindow)
	fmt.println("Adding GetApplicationDirectory")
	umka.AddFunc(ctx, "GetApplicationDirectory", umka_GetApplicationDirectory)
	fmt.println("Adding ImageDrawTriangle")
	umka.AddFunc(ctx, "ImageDrawTriangle", umka_ImageDrawTriangle)
	fmt.println("Adding IsWindowReady")
	umka.AddFunc(ctx, "IsWindowReady", umka_IsWindowReady)
	fmt.println("Adding GetImageAlphaBorder")
	umka.AddFunc(ctx, "GetImageAlphaBorder", umka_GetImageAlphaBorder)
	fmt.println("Adding DrawCube")
	umka.AddFunc(ctx, "DrawCube", umka_DrawCube)
	fmt.println("Adding LoadFileData")
	umka.AddFunc(ctx, "LoadFileData", umka_LoadFileData)
	fmt.println("Adding RestoreWindow")
	umka.AddFunc(ctx, "RestoreWindow", umka_RestoreWindow)
	fmt.println("Adding LoadImagePalette")
	umka.AddFunc(ctx, "LoadImagePalette", umka_LoadImagePalette)
	fmt.println("Adding DrawTexture")
	umka.AddFunc(ctx, "DrawTexture", umka_DrawTexture)
	fmt.println("Adding DrawCircleSectorLines")
	umka.AddFunc(ctx, "DrawCircleSectorLines", umka_DrawCircleSectorLines)
	fmt.println("Adding EndBlendMode")
	umka.AddFunc(ctx, "EndBlendMode", umka_EndBlendMode)
	fmt.println("Adding DrawPixel")
	umka.AddFunc(ctx, "DrawPixel", umka_DrawPixel)
	fmt.println("Adding SetWindowMaxSize")
	umka.AddFunc(ctx, "SetWindowMaxSize", umka_SetWindowMaxSize)
	fmt.println("Adding UnloadDirectoryFiles")
	umka.AddFunc(ctx, "UnloadDirectoryFiles", umka_UnloadDirectoryFiles)
	fmt.println("Adding UnloadModelAnimations")
	umka.AddFunc(ctx, "UnloadModelAnimations", umka_UnloadModelAnimations)
	fmt.println("Adding ImageFlipHorizontal")
	umka.AddFunc(ctx, "ImageFlipHorizontal", umka_ImageFlipHorizontal)
	fmt.println("Adding ColorFromNormalized")
	umka.AddFunc(ctx, "ColorFromNormalized", umka_ColorFromNormalized)
	fmt.println("Adding GetWorldToScreenEx")
	umka.AddFunc(ctx, "GetWorldToScreenEx", umka_GetWorldToScreenEx)
	fmt.println("Adding GetMonitorPhysicalHeight")
	umka.AddFunc(ctx, "GetMonitorPhysicalHeight", umka_GetMonitorPhysicalHeight)
	fmt.println("Adding LoadFontEx")
	umka.AddFunc(ctx, "LoadFontEx", umka_LoadFontEx)
	fmt.println("Adding DisableCursor")
	umka.AddFunc(ctx, "DisableCursor", umka_DisableCursor)
	fmt.println("Adding DrawTriangleLines")
	umka.AddFunc(ctx, "DrawTriangleLines", umka_DrawTriangleLines)
	fmt.println("Adding GenMeshHemiSphere")
	umka.AddFunc(ctx, "GenMeshHemiSphere", umka_GenMeshHemiSphere)
	fmt.println("Adding ImageDrawTriangleFan")
	umka.AddFunc(ctx, "ImageDrawTriangleFan", umka_ImageDrawTriangleFan)
	fmt.println("Adding IsAudioStreamPlaying")
	umka.AddFunc(ctx, "IsAudioStreamPlaying", umka_IsAudioStreamPlaying)
	fmt.println("Adding ImageMipmaps")
	umka.AddFunc(ctx, "ImageMipmaps", umka_ImageMipmaps)
	fmt.println("Adding IsImageValid")
	umka.AddFunc(ctx, "IsImageValid", umka_IsImageValid)
	fmt.println("Adding ImageDrawTextEx")
	umka.AddFunc(ctx, "ImageDrawTextEx", umka_ImageDrawTextEx)
	fmt.println("Adding CheckCollisionPointLine")
	umka.AddFunc(ctx, "CheckCollisionPointLine", umka_CheckCollisionPointLine)
	fmt.println("Adding ImageDrawCircleLinesV")
	umka.AddFunc(ctx, "ImageDrawCircleLinesV", umka_ImageDrawCircleLinesV)
	fmt.println("Adding IsPathFile")
	umka.AddFunc(ctx, "IsPathFile", umka_IsPathFile)
	fmt.println("Adding GetPixelDataSize")
	umka.AddFunc(ctx, "GetPixelDataSize", umka_GetPixelDataSize)
	fmt.println("Adding DrawRectangleRoundedLinesEx")
	umka.AddFunc(ctx, "DrawRectangleRoundedLinesEx", umka_DrawRectangleRoundedLinesEx)
	fmt.println("Adding SetTraceLogLevel")
	umka.AddFunc(ctx, "SetTraceLogLevel", umka_SetTraceLogLevel)
	fmt.println("Adding ImageFromImage")
	umka.AddFunc(ctx, "ImageFromImage", umka_ImageFromImage)
	fmt.println("Adding UnloadFont")
	umka.AddFunc(ctx, "UnloadFont", umka_UnloadFont)
	fmt.println("Adding GetMonitorName")
	umka.AddFunc(ctx, "GetMonitorName", umka_GetMonitorName)
	fmt.println("Adding IsSoundValid")
	umka.AddFunc(ctx, "IsSoundValid", umka_IsSoundValid)
	fmt.println("Adding GetScreenToWorldRayEx")
	umka.AddFunc(ctx, "GetScreenToWorldRayEx", umka_GetScreenToWorldRayEx)
	fmt.println("Adding UnloadShader")
	umka.AddFunc(ctx, "UnloadShader", umka_UnloadShader)
	fmt.println("Adding DrawLineEx")
	umka.AddFunc(ctx, "DrawLineEx", umka_DrawLineEx)
	fmt.println("Adding LoadImageFromMemory")
	umka.AddFunc(ctx, "LoadImageFromMemory", umka_LoadImageFromMemory)
	fmt.println("Adding GenImageGradientSquare")
	umka.AddFunc(ctx, "GenImageGradientSquare", umka_GenImageGradientSquare)
	fmt.println("Adding ColorAlphaBlend")
	umka.AddFunc(ctx, "ColorAlphaBlend", umka_ColorAlphaBlend)
	fmt.println("Adding DrawGrid")
	umka.AddFunc(ctx, "DrawGrid", umka_DrawGrid)
	fmt.println("Adding GenImageText")
	umka.AddFunc(ctx, "GenImageText", umka_GenImageText)
	fmt.println("Adding GetGesturePinchVector")
	umka.AddFunc(ctx, "GetGesturePinchVector", umka_GetGesturePinchVector)
	fmt.println("Adding LoadImageFromTexture")
	umka.AddFunc(ctx, "LoadImageFromTexture", umka_LoadImageFromTexture)
	fmt.println("Adding ImageDrawTriangleLines")
	umka.AddFunc(ctx, "ImageDrawTriangleLines", umka_ImageDrawTriangleLines)
	fmt.println("Adding GetGlyphInfo")
	umka.AddFunc(ctx, "GetGlyphInfo", umka_GetGlyphInfo)
	fmt.println("Adding LoadImageAnimFromMemory")
	umka.AddFunc(ctx, "LoadImageAnimFromMemory", umka_LoadImageAnimFromMemory)
	fmt.println("Adding GetGesturePinchAngle")
	umka.AddFunc(ctx, "GetGesturePinchAngle", umka_GetGesturePinchAngle)
	fmt.println("Adding GenMeshCylinder")
	umka.AddFunc(ctx, "GenMeshCylinder", umka_GenMeshCylinder)
	fmt.println("Adding ImageColorReplace")
	umka.AddFunc(ctx, "ImageColorReplace", umka_ImageColorReplace)
	fmt.println("Adding TextToPascal")
	umka.AddFunc(ctx, "TextToPascal", umka_TextToPascal)
	fmt.println("Adding ColorAlpha")
	umka.AddFunc(ctx, "ColorAlpha", umka_ColorAlpha)
	fmt.println("Adding GenMeshCubicmap")
	umka.AddFunc(ctx, "GenMeshCubicmap", umka_GenMeshCubicmap)
	fmt.println("Adding GetCollisionRec")
	umka.AddFunc(ctx, "GetCollisionRec", umka_GetCollisionRec)
	fmt.println("Adding LoadAudioStream")
	umka.AddFunc(ctx, "LoadAudioStream", umka_LoadAudioStream)
	fmt.println("Adding DrawSplineSegmentBezierCubic")
	umka.AddFunc(ctx, "DrawSplineSegmentBezierCubic", umka_DrawSplineSegmentBezierCubic)
	fmt.println("Adding ImageToPOT")
	umka.AddFunc(ctx, "ImageToPOT", umka_ImageToPOT)
	fmt.println("Adding SetAudioStreamPan")
	umka.AddFunc(ctx, "SetAudioStreamPan", umka_SetAudioStreamPan)
	fmt.println("Adding TextFindIndex")
	umka.AddFunc(ctx, "TextFindIndex", umka_TextFindIndex)
	fmt.println("Adding DrawSphereWires")
	umka.AddFunc(ctx, "DrawSphereWires", umka_DrawSphereWires)
	fmt.println("Adding ChangeDirectory")
	umka.AddFunc(ctx, "ChangeDirectory", umka_ChangeDirectory)
	fmt.println("Adding DrawTextureRec")
	umka.AddFunc(ctx, "DrawTextureRec", umka_DrawTextureRec)
	fmt.println("Adding GenTextureMipmaps")
	umka.AddFunc(ctx, "GenTextureMipmaps", umka_GenTextureMipmaps)
	fmt.println("Adding GetGlyphIndex")
	umka.AddFunc(ctx, "GetGlyphIndex", umka_GetGlyphIndex)
	fmt.println("Adding DrawTextPro")
	umka.AddFunc(ctx, "DrawTextPro", umka_DrawTextPro)
	fmt.println("Adding CameraMoveRight")
	umka.AddFunc(ctx, "CameraMoveRight", umka_CameraMoveRight)
	fmt.println("Adding SetModelMeshMaterial")
	umka.AddFunc(ctx, "SetModelMeshMaterial", umka_SetModelMeshMaterial)
	fmt.println("Adding GetMusicTimeLength")
	umka.AddFunc(ctx, "GetMusicTimeLength", umka_GetMusicTimeLength)
	fmt.println("Adding SetShapesTexture")
	umka.AddFunc(ctx, "SetShapesTexture", umka_SetShapesTexture)
	fmt.println("Adding SaveFileText")
	umka.AddFunc(ctx, "SaveFileText", umka_SaveFileText)
	fmt.println("Adding DrawTextureEx")
	umka.AddFunc(ctx, "DrawTextureEx", umka_DrawTextureEx)
	fmt.println("Adding DrawSplineBasis")
	umka.AddFunc(ctx, "DrawSplineBasis", umka_DrawSplineBasis)
	fmt.println("Adding DrawTriangle3D")
	umka.AddFunc(ctx, "DrawTriangle3D", umka_DrawTriangle3D)
	fmt.println("Adding SetMusicVolume")
	umka.AddFunc(ctx, "SetMusicVolume", umka_SetMusicVolume)
	fmt.println("Adding UpdateModelAnimation")
	umka.AddFunc(ctx, "UpdateModelAnimation", umka_UpdateModelAnimation)
	fmt.println("Adding LoadDroppedFiles")
	umka.AddFunc(ctx, "LoadDroppedFiles", umka_LoadDroppedFiles)
	fmt.println("Adding CheckCollisionPointTriangle")
	umka.AddFunc(ctx, "CheckCollisionPointTriangle", umka_CheckCollisionPointTriangle)
	fmt.println("Adding ImageDrawPixelV")
	umka.AddFunc(ctx, "ImageDrawPixelV", umka_ImageDrawPixelV)
	fmt.println("Adding GetRayCollisionMesh")
	umka.AddFunc(ctx, "GetRayCollisionMesh", umka_GetRayCollisionMesh)
	fmt.println("Adding DrawMeshInstanced")
	umka.AddFunc(ctx, "DrawMeshInstanced", umka_DrawMeshInstanced)
	fmt.println("Adding GetCodepoint")
	umka.AddFunc(ctx, "GetCodepoint", umka_GetCodepoint)
	fmt.println("Adding IsMaterialValid")
	umka.AddFunc(ctx, "IsMaterialValid", umka_IsMaterialValid)
	fmt.println("Adding SetWindowIcons")
	umka.AddFunc(ctx, "SetWindowIcons", umka_SetWindowIcons)
	fmt.println("Adding GetMouseDelta")
	umka.AddFunc(ctx, "GetMouseDelta", umka_GetMouseDelta)
	fmt.println("Adding GetRayCollisionSphere")
	umka.AddFunc(ctx, "GetRayCollisionSphere", umka_GetRayCollisionSphere)
	fmt.println("Adding ImageDrawLineV")
	umka.AddFunc(ctx, "ImageDrawLineV", umka_ImageDrawLineV)
	fmt.println("Adding ImageDrawRectangle")
	umka.AddFunc(ctx, "ImageDrawRectangle", umka_ImageDrawRectangle)
	fmt.println("Adding WaveCopy")
	umka.AddFunc(ctx, "WaveCopy", umka_WaveCopy)
	fmt.println("Adding IsMouseButtonDown")
	umka.AddFunc(ctx, "IsMouseButtonDown", umka_IsMouseButtonDown)
	fmt.println("Adding ImageDrawRectangleV")
	umka.AddFunc(ctx, "ImageDrawRectangleV", umka_ImageDrawRectangleV)
	fmt.println("Adding ExportImage")
	umka.AddFunc(ctx, "ExportImage", umka_ExportImage)
	fmt.println("Adding LoadTexture")
	umka.AddFunc(ctx, "LoadTexture", umka_LoadTexture)
	fmt.println("Adding WaitTime")
	umka.AddFunc(ctx, "WaitTime", umka_WaitTime)
	fmt.println("Adding GetMousePosition")
	umka.AddFunc(ctx, "GetMousePosition", umka_GetMousePosition)
	fmt.println("Adding GetFrameTime")
	umka.AddFunc(ctx, "GetFrameTime", umka_GetFrameTime)
	fmt.println("Adding GetFileModTime")
	umka.AddFunc(ctx, "GetFileModTime", umka_GetFileModTime)
	fmt.println("Adding ExportDataAsCode")
	umka.AddFunc(ctx, "ExportDataAsCode", umka_ExportDataAsCode)
	fmt.println("Adding SetWindowState")
	umka.AddFunc(ctx, "SetWindowState", umka_SetWindowState)
	fmt.println("Adding LoadImageRaw")
	umka.AddFunc(ctx, "LoadImageRaw", umka_LoadImageRaw)
	fmt.println("Adding TextJoin")
	umka.AddFunc(ctx, "TextJoin", umka_TextJoin)
	fmt.println("Adding ImageAlphaCrop")
	umka.AddFunc(ctx, "ImageAlphaCrop", umka_ImageAlphaCrop)
	fmt.println("Adding GetScreenWidth")
	umka.AddFunc(ctx, "GetScreenWidth", umka_GetScreenWidth)
	fmt.println("Adding GetCameraViewMatrix")
	umka.AddFunc(ctx, "GetCameraViewMatrix", umka_GetCameraViewMatrix)
	fmt.println("Adding IsGamepadButtonUp")
	umka.AddFunc(ctx, "IsGamepadButtonUp", umka_IsGamepadButtonUp)
	fmt.println("Adding StartAutomationEventRecording")
	umka.AddFunc(ctx, "StartAutomationEventRecording", umka_StartAutomationEventRecording)
	fmt.println("Adding ImageKernelConvolution")
	umka.AddFunc(ctx, "ImageKernelConvolution", umka_ImageKernelConvolution)
	fmt.println("Adding DrawModelEx")
	umka.AddFunc(ctx, "DrawModelEx", umka_DrawModelEx)
	fmt.println("Adding UpdateMusicStream")
	umka.AddFunc(ctx, "UpdateMusicStream", umka_UpdateMusicStream)
	fmt.println("Adding ColorLerp")
	umka.AddFunc(ctx, "ColorLerp", umka_ColorLerp)
	fmt.println("Adding ColorNormalize")
	umka.AddFunc(ctx, "ColorNormalize", umka_ColorNormalize)
	fmt.println("Adding IsWindowMaximized")
	umka.AddFunc(ctx, "IsWindowMaximized", umka_IsWindowMaximized)
	fmt.println("Adding GetCodepointNext")
	umka.AddFunc(ctx, "GetCodepointNext", umka_GetCodepointNext)
	fmt.println("Adding ImageAlphaPremultiply")
	umka.AddFunc(ctx, "ImageAlphaPremultiply", umka_ImageAlphaPremultiply)
	fmt.println("Adding UnloadAutomationEventList")
	umka.AddFunc(ctx, "UnloadAutomationEventList", umka_UnloadAutomationEventList)
	fmt.println("Adding UnloadModelAnimation")
	umka.AddFunc(ctx, "UnloadModelAnimation", umka_UnloadModelAnimation)
	fmt.println("Adding DrawCubeV")
	umka.AddFunc(ctx, "DrawCubeV", umka_DrawCubeV)
	fmt.println("Adding ImageDrawCircleLines")
	umka.AddFunc(ctx, "ImageDrawCircleLines", umka_ImageDrawCircleLines)
	fmt.println("Adding DrawCylinderWires")
	umka.AddFunc(ctx, "DrawCylinderWires", umka_DrawCylinderWires)
	fmt.println("Adding EndTextureMode")
	umka.AddFunc(ctx, "EndTextureMode", umka_EndTextureMode)
	fmt.println("Adding GetShaderLocationAttrib")
	umka.AddFunc(ctx, "GetShaderLocationAttrib", umka_GetShaderLocationAttrib)
	fmt.println("Adding SetShaderValueTexture")
	umka.AddFunc(ctx, "SetShaderValueTexture", umka_SetShaderValueTexture)
	fmt.println("Adding LoadImageFromScreen")
	umka.AddFunc(ctx, "LoadImageFromScreen", umka_LoadImageFromScreen)
	fmt.println("Adding ImageResizeCanvas")
	umka.AddFunc(ctx, "ImageResizeCanvas", umka_ImageResizeCanvas)
	fmt.println("Adding InitAudioDevice")
	umka.AddFunc(ctx, "InitAudioDevice", umka_InitAudioDevice)
	fmt.println("Adding TextSplit")
	umka.AddFunc(ctx, "TextSplit", umka_TextSplit)
	fmt.println("Adding GetPrevDirectoryPath")
	umka.AddFunc(ctx, "GetPrevDirectoryPath", umka_GetPrevDirectoryPath)
	fmt.println("Adding IsSoundPlaying")
	umka.AddFunc(ctx, "IsSoundPlaying", umka_IsSoundPlaying)
	fmt.println("Adding PlayAutomationEvent")
	umka.AddFunc(ctx, "PlayAutomationEvent", umka_PlayAutomationEvent)
	fmt.println("Adding ImageCrop")
	umka.AddFunc(ctx, "ImageCrop", umka_ImageCrop)
	fmt.println("Adding GetModelBoundingBox")
	umka.AddFunc(ctx, "GetModelBoundingBox", umka_GetModelBoundingBox)
	fmt.println("Adding DrawLine3D")
	umka.AddFunc(ctx, "DrawLine3D", umka_DrawLine3D)
	fmt.println("Adding CheckCollisionLines")
	umka.AddFunc(ctx, "CheckCollisionLines", umka_CheckCollisionLines)
	fmt.println("Adding UnloadRandomSequence")
	umka.AddFunc(ctx, "UnloadRandomSequence", umka_UnloadRandomSequence)
	fmt.println("Adding DrawSplineBezierQuadratic")
	umka.AddFunc(ctx, "DrawSplineBezierQuadratic", umka_DrawSplineBezierQuadratic)
	fmt.println("Adding SetTargetFPS")
	umka.AddFunc(ctx, "SetTargetFPS", umka_SetTargetFPS)
	fmt.println("Adding LoadSoundFromWave")
	umka.AddFunc(ctx, "LoadSoundFromWave", umka_LoadSoundFromWave)
	fmt.println("Adding ImageColorBrightness")
	umka.AddFunc(ctx, "ImageColorBrightness", umka_ImageColorBrightness)
	fmt.println("Adding LoadWaveSamples")
	umka.AddFunc(ctx, "LoadWaveSamples", umka_LoadWaveSamples)
	fmt.println("Adding SetPixelColor")
	umka.AddFunc(ctx, "SetPixelColor", umka_SetPixelColor)
	fmt.println("Adding SetWindowMinSize")
	umka.AddFunc(ctx, "SetWindowMinSize", umka_SetWindowMinSize)
	fmt.println("Adding IsMouseButtonPressed")
	umka.AddFunc(ctx, "IsMouseButtonPressed", umka_IsMouseButtonPressed)
	fmt.println("Adding DrawMesh")
	umka.AddFunc(ctx, "DrawMesh", umka_DrawMesh)
	fmt.println("Adding LoadRenderTexture")
	umka.AddFunc(ctx, "LoadRenderTexture", umka_LoadRenderTexture)
	fmt.println("Adding UnloadSound")
	umka.AddFunc(ctx, "UnloadSound", umka_UnloadSound)
	fmt.println("Adding ImageCopy")
	umka.AddFunc(ctx, "ImageCopy", umka_ImageCopy)
	fmt.println("Adding GetFileLength")
	umka.AddFunc(ctx, "GetFileLength", umka_GetFileLength)
	fmt.println("Adding MeasureText")
	umka.AddFunc(ctx, "MeasureText", umka_MeasureText)
	fmt.println("Adding ImageDrawLine")
	umka.AddFunc(ctx, "ImageDrawLine", umka_ImageDrawLine)
	fmt.println("Adding DrawCircleGradient")
	umka.AddFunc(ctx, "DrawCircleGradient", umka_DrawCircleGradient)
	fmt.println("Adding GetMonitorHeight")
	umka.AddFunc(ctx, "GetMonitorHeight", umka_GetMonitorHeight)
	fmt.println("Adding DrawPolyLines")
	umka.AddFunc(ctx, "DrawPolyLines", umka_DrawPolyLines)
	fmt.println("Adding LoadSound")
	umka.AddFunc(ctx, "LoadSound", umka_LoadSound)
	fmt.println("Adding SetExitKey")
	umka.AddFunc(ctx, "SetExitKey", umka_SetExitKey)
	fmt.println("Adding LoadModelFromMesh")
	umka.AddFunc(ctx, "LoadModelFromMesh", umka_LoadModelFromMesh)
	fmt.println("Adding UnloadCodepoints")
	umka.AddFunc(ctx, "UnloadCodepoints", umka_UnloadCodepoints)
	fmt.println("Adding LoadImage")
	umka.AddFunc(ctx, "LoadImage", umka_LoadImage)
	fmt.println("Adding LoadMusicStream")
	umka.AddFunc(ctx, "LoadMusicStream", umka_LoadMusicStream)
	fmt.println("Adding ExportImageAsCode")
	umka.AddFunc(ctx, "ExportImageAsCode", umka_ExportImageAsCode)
	fmt.println("Adding ColorBrightness")
	umka.AddFunc(ctx, "ColorBrightness", umka_ColorBrightness)
	fmt.println("Adding LoadTextureCubemap")
	umka.AddFunc(ctx, "LoadTextureCubemap", umka_LoadTextureCubemap)
	fmt.println("Adding IsWindowFocused")
	umka.AddFunc(ctx, "IsWindowFocused", umka_IsWindowFocused)
	fmt.println("Adding ComputeMD5")
	umka.AddFunc(ctx, "ComputeMD5", umka_ComputeMD5)
	fmt.println("Adding ExportImageToMemory")
	umka.AddFunc(ctx, "ExportImageToMemory", umka_ExportImageToMemory)
	fmt.println("Adding GetCurrentMonitor")
	umka.AddFunc(ctx, "GetCurrentMonitor", umka_GetCurrentMonitor)
	fmt.println("Adding DrawTexturePro")
	umka.AddFunc(ctx, "DrawTexturePro", umka_DrawTexturePro)
	fmt.println("Adding DrawCylinder")
	umka.AddFunc(ctx, "DrawCylinder", umka_DrawCylinder)
	fmt.println("Adding DrawModelWires")
	umka.AddFunc(ctx, "DrawModelWires", umka_DrawModelWires)
	fmt.println("Adding DrawCircle")
	umka.AddFunc(ctx, "DrawCircle", umka_DrawCircle)
	fmt.println("Adding ImageRotateCCW")
	umka.AddFunc(ctx, "ImageRotateCCW", umka_ImageRotateCCW)
	fmt.println("Adding CodepointToUTF8")
	umka.AddFunc(ctx, "CodepointToUTF8", umka_CodepointToUTF8)
	fmt.println("Adding DrawTextureNPatch")
	umka.AddFunc(ctx, "DrawTextureNPatch", umka_DrawTextureNPatch)
	fmt.println("Adding CloseAudioDevice")
	umka.AddFunc(ctx, "CloseAudioDevice", umka_CloseAudioDevice)
	fmt.println("Adding IsWindowState")
	umka.AddFunc(ctx, "IsWindowState", umka_IsWindowState)
	fmt.println("Adding UnloadModel")
	umka.AddFunc(ctx, "UnloadModel", umka_UnloadModel)
	fmt.println("Adding DrawRectangleRoundedLines")
	umka.AddFunc(ctx, "DrawRectangleRoundedLines", umka_DrawRectangleRoundedLines)
	fmt.println("Adding LoadMaterialDefault")
	umka.AddFunc(ctx, "LoadMaterialDefault", umka_LoadMaterialDefault)
	fmt.println("Adding SetAudioStreamVolume")
	umka.AddFunc(ctx, "SetAudioStreamVolume", umka_SetAudioStreamVolume)
	fmt.println("Adding IsWaveValid")
	umka.AddFunc(ctx, "IsWaveValid", umka_IsWaveValid)
	fmt.println("Adding ImageResize")
	umka.AddFunc(ctx, "ImageResize", umka_ImageResize)
	fmt.println("Adding MemAlloc")
	umka.AddFunc(ctx, "MemAlloc", umka_MemAlloc)
	fmt.println("Adding WaveFormat")
	umka.AddFunc(ctx, "WaveFormat", umka_WaveFormat)
	fmt.println("Adding UpdateMeshBuffer")
	umka.AddFunc(ctx, "UpdateMeshBuffer", umka_UpdateMeshBuffer)
	fmt.println("Adding SetAutomationEventBaseFrame")
	umka.AddFunc(ctx, "SetAutomationEventBaseFrame", umka_SetAutomationEventBaseFrame)
	fmt.println("Adding PlaySound")
	umka.AddFunc(ctx, "PlaySound", umka_PlaySound)
	fmt.println("Adding IsGestureDetected")
	umka.AddFunc(ctx, "IsGestureDetected", umka_IsGestureDetected)
	fmt.println("Adding SetWindowIcon")
	umka.AddFunc(ctx, "SetWindowIcon", umka_SetWindowIcon)
	fmt.println("Adding IsModelAnimationValid")
	umka.AddFunc(ctx, "IsModelAnimationValid", umka_IsModelAnimationValid)
	fmt.println("Adding SetShaderValueV")
	umka.AddFunc(ctx, "SetShaderValueV", umka_SetShaderValueV)
	fmt.println("Adding DrawSplineLinear")
	umka.AddFunc(ctx, "DrawSplineLinear", umka_DrawSplineLinear)
	fmt.println("Adding DrawRectanglePro")
	umka.AddFunc(ctx, "DrawRectanglePro", umka_DrawRectanglePro)
	fmt.println("Adding SwapScreenBuffer")
	umka.AddFunc(ctx, "SwapScreenBuffer", umka_SwapScreenBuffer)
	fmt.println("Adding LoadFontFromMemory")
	umka.AddFunc(ctx, "LoadFontFromMemory", umka_LoadFontFromMemory)
	fmt.println("Adding CameraYaw")
	umka.AddFunc(ctx, "CameraYaw", umka_CameraYaw)
	fmt.println("Adding DrawCapsuleWires")
	umka.AddFunc(ctx, "DrawCapsuleWires", umka_DrawCapsuleWires)
	fmt.println("Adding TextLength")
	umka.AddFunc(ctx, "TextLength", umka_TextLength)
	fmt.println("Adding ExportWaveAsCode")
	umka.AddFunc(ctx, "ExportWaveAsCode", umka_ExportWaveAsCode)
	fmt.println("Adding DrawTextCodepoint")
	umka.AddFunc(ctx, "DrawTextCodepoint", umka_DrawTextCodepoint)
	fmt.println("Adding GetGamepadButtonPressed")
	umka.AddFunc(ctx, "GetGamepadButtonPressed", umka_GetGamepadButtonPressed)
	fmt.println("Adding DrawRectangleGradientEx")
	umka.AddFunc(ctx, "DrawRectangleGradientEx", umka_DrawRectangleGradientEx)
	fmt.println("Adding GetCharPressed")
	umka.AddFunc(ctx, "GetCharPressed", umka_GetCharPressed)
	fmt.println("Adding CheckCollisionPointRec")
	umka.AddFunc(ctx, "CheckCollisionPointRec", umka_CheckCollisionPointRec)
	fmt.println("Adding SetGamepadMappings")
	umka.AddFunc(ctx, "SetGamepadMappings", umka_SetGamepadMappings)
	fmt.println("Adding IsShaderValid")
	umka.AddFunc(ctx, "IsShaderValid", umka_IsShaderValid)
	fmt.println("Adding GetMouseX")
	umka.AddFunc(ctx, "GetMouseX", umka_GetMouseX)
	fmt.println("Adding UnloadImage")
	umka.AddFunc(ctx, "UnloadImage", umka_UnloadImage)
	fmt.println("Adding ClearBackground")
	umka.AddFunc(ctx, "ClearBackground", umka_ClearBackground)
	fmt.println("Adding IsFontValid")
	umka.AddFunc(ctx, "IsFontValid", umka_IsFontValid)
	fmt.println("Adding ImageBlurGaussian")
	umka.AddFunc(ctx, "ImageBlurGaussian", umka_ImageBlurGaussian)
	fmt.println("Adding GetWorkingDirectory")
	umka.AddFunc(ctx, "GetWorkingDirectory", umka_GetWorkingDirectory)
	fmt.println("Adding IsMouseButtonUp")
	umka.AddFunc(ctx, "IsMouseButtonUp", umka_IsMouseButtonUp)
	fmt.println("Adding ImageDrawTriangleEx")
	umka.AddFunc(ctx, "ImageDrawTriangleEx", umka_ImageDrawTriangleEx)
	fmt.println("Adding SetMaterialTexture")
	umka.AddFunc(ctx, "SetMaterialTexture", umka_SetMaterialTexture)
	fmt.println("Adding GetMonitorPhysicalWidth")
	umka.AddFunc(ctx, "GetMonitorPhysicalWidth", umka_GetMonitorPhysicalWidth)
	fmt.println("Adding ImageDither")
	umka.AddFunc(ctx, "ImageDither", umka_ImageDither)
	fmt.println("Adding LoadRandomSequence")
	umka.AddFunc(ctx, "LoadRandomSequence", umka_LoadRandomSequence)
	fmt.println("Adding GetMouseWheelMove")
	umka.AddFunc(ctx, "GetMouseWheelMove", umka_GetMouseWheelMove)
	fmt.println("Adding LoadFontFromImage")
	umka.AddFunc(ctx, "LoadFontFromImage", umka_LoadFontFromImage)
	fmt.println("Adding DrawPoly")
	umka.AddFunc(ctx, "DrawPoly", umka_DrawPoly)
	fmt.println("Adding GetWindowPosition")
	umka.AddFunc(ctx, "GetWindowPosition", umka_GetWindowPosition)
	fmt.println("Adding StopAutomationEventRecording")
	umka.AddFunc(ctx, "StopAutomationEventRecording", umka_StopAutomationEventRecording)
	fmt.println("Adding EndMode2D")
	umka.AddFunc(ctx, "EndMode2D", umka_EndMode2D)
	fmt.println("Adding SetShaderValueMatrix")
	umka.AddFunc(ctx, "SetShaderValueMatrix", umka_SetShaderValueMatrix)
	fmt.println("Adding LoadFontData")
	umka.AddFunc(ctx, "LoadFontData", umka_LoadFontData)
	fmt.println("Adding GetKeyPressed")
	umka.AddFunc(ctx, "GetKeyPressed", umka_GetKeyPressed)
	fmt.println("Adding DrawRay")
	umka.AddFunc(ctx, "DrawRay", umka_DrawRay)
	fmt.println("Adding IsAudioStreamProcessed")
	umka.AddFunc(ctx, "IsAudioStreamProcessed", umka_IsAudioStreamProcessed)
	fmt.println("Adding DrawCylinderWiresEx")
	umka.AddFunc(ctx, "DrawCylinderWiresEx", umka_DrawCylinderWiresEx)
	fmt.println("Adding UnloadFontData")
	umka.AddFunc(ctx, "UnloadFontData", umka_UnloadFontData)
	fmt.println("Adding CompressData")
	umka.AddFunc(ctx, "CompressData", umka_CompressData)
	fmt.println("Adding DrawBillboardPro")
	umka.AddFunc(ctx, "DrawBillboardPro", umka_DrawBillboardPro)
	fmt.println("Adding ImageColorGrayscale")
	umka.AddFunc(ctx, "ImageColorGrayscale", umka_ImageColorGrayscale)
	fmt.println("Adding GetTouchX")
	umka.AddFunc(ctx, "GetTouchX", umka_GetTouchX)
	fmt.println("Adding GetFontDefault")
	umka.AddFunc(ctx, "GetFontDefault", umka_GetFontDefault)
	fmt.println("Adding IsRenderTextureValid")
	umka.AddFunc(ctx, "IsRenderTextureValid", umka_IsRenderTextureValid)
	fmt.println("Adding TextInsert")
	umka.AddFunc(ctx, "TextInsert", umka_TextInsert)
	fmt.println("Adding IsWindowFullscreen")
	umka.AddFunc(ctx, "IsWindowFullscreen", umka_IsWindowFullscreen)
	fmt.println("Adding LoadFileText")
	umka.AddFunc(ctx, "LoadFileText", umka_LoadFileText)
	rv := umka.AddModule(
		ctx,
		"rl.um", 
		#load("./rl.um", cstring)
	)
}
