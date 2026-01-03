//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package bindings

import "../../umka"
import "base:runtime"
import "core:c"
import "core:fmt"
import "vendor:raylib"

umka_InitWindow :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	width := cast(^c.int)umka.GetParam(params, 0)
	height := cast(^c.int)umka.GetParam(params, 1)
	title := cast(^cstring)umka.GetParam(params, 2)
	raylib.InitWindow(width^, height^, title^)
}

umka_BeginDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	raylib.BeginDrawing()
}

umka_EndDrawing :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	raylib.EndDrawing()
}

umka_WindowShouldClose :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()
	result.intVal = cast(i64)raylib.WindowShouldClose()
}

umka_ClearBackground :: proc "c" (params: ^umka.StackSlot, result: ^umka.StackSlot) {
	context = runtime.default_context()

	color := cast(^raylib.Color)umka.GetParam(params, 0)
	raylib.ClearBackground(color^)
}

umka_add_bindings :: proc(ctx: ^umka.Context) {
	fmt.println("Adding InitWindow")
	umka.AddFunc(ctx^, "InitWindow", umka_InitWindow)
	fmt.println("Adding BeginDrawing")
	umka.AddFunc(ctx^, "BeginDrawing", umka_BeginDrawing)
	fmt.println("Adding EndDrawing")
	umka.AddFunc(ctx^, "EndDrawing", umka_EndDrawing)
	fmt.println("Adding WindowShouldClose")
	umka.AddFunc(ctx^, "WindowShouldClose", umka_WindowShouldClose)
	fmt.println("Adding ClearBackground")
	umka.AddFunc(ctx^, "ClearBackground", umka_ClearBackground)
	rv := umka.AddModule(
		ctx^,
		"bindings.um",
		`
		type (
			BoneInfo* = struct {
				name: [32]uint8
				parent: int32
			}
			VrDeviceInfo* = struct {
				hResolution: int32
				vResolution: int32
				hScreenSize: real32
				vScreenSize: real32
				eyeToScreenDistance: real32
				lensSeparationDistance: real32
				interpupillaryDistance: real32
				lensDistortionValues: [4]real32
				chromaAbCorrection: [4]real32
			}
			FilePathList* = struct {
				capacity: uint32
				count: uint32
				paths: ^str
			}
			AudioStream* = struct {
				buffer: ^void
				processor: ^void
				sampleRate: uint32
				sampleSize: uint32
				channels: uint32
			}
			Sound* = struct {
				stream: AudioStream
				frameCount: uint32
			}
			Wave* = struct {
				frameCount: uint32
				sampleRate: uint32
				sampleSize: uint32
				channels: uint32
				data: ^void
			}
			Music* = struct {
				stream: AudioStream
				frameCount: uint32
				looping: bool
				ctxType: int32
				ctxData: ^void
			}
			Rectangle* = struct {
				x: real32
				y: real32
				width: real32
				height: real32
			}
			AutomationEvent* = struct {
				frame: uint32
				_type: uint32
				params: [4]int32
			}
			Shader* = struct {
				id: uint32
				locs: ^int32
			}
			AutomationEventList* = struct {
				capacity: uint32
				count: uint32
				events: ^AutomationEvent
			}
			Vector3* = [3]real32
			quaternion128* = [4]real32
			Vector2* = [2]real32
			Vector4* = [4]real32
			CameraMode* = enum (int32) {
				CUSTOM
				FREE
				ORBITAL
				FIRST_PERSON
				THIRD_PERSON
			}
			ShaderUniformDataType* = enum (int32) {
				FLOAT
				VEC2
				VEC3
				VEC4
				INT
				IVEC2
				IVEC3
				IVEC4
				SAMPLER2D
			}
			ShaderLocationIndex* = enum (int32) {
				VERTEX_POSITION
				VERTEX_TEXCOORD01
				VERTEX_TEXCOORD02
				VERTEX_NORMAL
				VERTEX_TANGENT
				VERTEX_COLOR
				MATRIX_MVP
				MATRIX_VIEW
				MATRIX_PROJECTION
				MATRIX_MODEL
				MATRIX_NORMAL
				VECTOR_VIEW
				COLOR_DIFFUSE
				COLOR_SPECULAR
				COLOR_AMBIENT
				MAP_ALBEDO
				MAP_METALNESS
				MAP_NORMAL
				MAP_ROUGHNESS
				MAP_OCCLUSION
				MAP_EMISSION
				MAP_HEIGHT
				MAP_CUBEMAP
				MAP_IRRADIANCE
				MAP_PREFILTER
				MAP_BRDF
				VERTEX_BONEIDS
				VERTEX_BONEWEIGHTS
				BONE_MATRICES
			}
			BlendMode* = enum (int32) {
				ALPHA
				ADDITIVE
				MULTIPLIED
				ADD_COLORS
				SUBTRACT_COLORS
				ALPHA_PREMULTIPLY
				CUSTOM
				CUSTOM_SEPARATE
			}
			TraceLogLevel* = enum (int32) {
				ALL
				TRACE
				DEBUG
				INFO
				WARNING
				ERROR
				FATAL
				NONE
			}
			KeyboardKey* = enum (int32) {
				KEY_NULL
				APOSTROPHE = 39
				COMMA = 44
				MINUS
				PERIOD
				SLASH
				ZERO
				ONE
				TWO
				THREE
				FOUR
				FIVE
				SIX
				SEVEN
				EIGHT
				NINE
				SEMICOLON = 59
				EQUAL = 61
				A = 65
				B
				C
				D
				E
				F
				G
				H
				I
				J
				K
				L
				M
				N
				O
				P
				Q
				R
				S
				T
				U
				V
				W
				X
				Y
				Z
				LEFT_BRACKET
				BACKSLASH
				RIGHT_BRACKET
				GRAVE = 96
				SPACE
				ESCAPE = 256
				ENTER
				TAB
				BACKSPACE
				INSERT
				DELETE
				RIGHT
				LEFT
				DOWN
				UP
				PAGE_UP
				PAGE_DOWN
				HOME
				END
				CAPS_LOCK = 280
				SCROLL_LOCK
				NUM_LOCK
				PRINT_SCREEN
				PAUSE
				F1 = 290
				F2
				F3
				F4
				F5
				F6
				F7
				F8
				F9
				F10
				F11
				F12
				LEFT_SHIFT = 340
				LEFT_CONTROL
				LEFT_ALT
				LEFT_SUPER
				RIGHT_SHIFT
				RIGHT_CONTROL
				RIGHT_ALT
				RIGHT_SUPER
				KB_MENU
				KP_0
				KP_1
				KP_2
				KP_3
				KP_4
				KP_5
				KP_6
				KP_7
				KP_8
				KP_9
				KP_DECIMAL
				KP_DIVIDE
				KP_MULTIPLY
				KP_SUBTRACT
				KP_ADD
				KP_ENTER
				KP_EQUAL
				BACK
				MENU
				VOLUME_UP = 24
				VOLUME_DOWN
			}
			FontType* = enum (int32) {
				DEFAULT
				BITMAP
				SDF
			}
			NPatchLayout* = enum (int32) {
				NINE_PATCH
				THREE_PATCH_VERTICAL
				THREE_PATCH_HORIZONTAL
			}
			MouseButton* = enum (int32) {
				LEFT
				RIGHT
				MIDDLE
				SIDE
				EXTRA
				FORWARD
				BACK
			}
			CubemapLayout* = enum (int32) {
				AUTO_DETECT
				LINE_VERTICAL
				LINE_HORIZONTAL
				CROSS_THREE_BY_FOUR
				CROSS_FOUR_BY_THREE
			}
			CameraProjection* = enum (int32) {
				PERSPECTIVE
				ORTHOGRAPHIC
			}
			TextureWrap* = enum (int32) {
				REPEAT
				CLAMP
				MIRROR_REPEAT
				MIRROR_CLAMP
			}
			MaterialMapIndex* = enum (int32) {
				ALBEDO
				METALNESS
				NORMAL
				ROUGHNESS
				OCCLUSION
				EMISSION
				HEIGHT
				CUBEMAP
				IRRADIANCE
				PREFILTER
				BRDF
			}
			MouseCursor* = enum (int32) {
				DEFAULT
				ARROW
				IBEAM
				CROSSHAIR
				POINTING_HAND
				RESIZE_EW
				RESIZE_NS
				RESIZE_NWSE
				RESIZE_NESW
				RESIZE_ALL
				NOT_ALLOWED
			}
			GamepadAxis* = enum (int32) {
				LEFT_X
				LEFT_Y
				RIGHT_X
				RIGHT_Y
				LEFT_TRIGGER
				RIGHT_TRIGGER
			}
			GamepadButton* = enum (int32) {
				UNKNOWN
				LEFT_FACE_UP
				LEFT_FACE_RIGHT
				LEFT_FACE_DOWN
				LEFT_FACE_LEFT
				RIGHT_FACE_UP
				RIGHT_FACE_RIGHT
				RIGHT_FACE_DOWN
				RIGHT_FACE_LEFT
				LEFT_TRIGGER_1
				LEFT_TRIGGER_2
				RIGHT_TRIGGER_1
				RIGHT_TRIGGER_2
				MIDDLE_LEFT
				MIDDLE
				MIDDLE_RIGHT
				LEFT_THUMB
				RIGHT_THUMB
			}
			Gesture* = enum (uint32) {
				TAP
				DOUBLETAP
				HOLD
				DRAG
				SWIPE_RIGHT
				SWIPE_LEFT
				SWIPE_UP
				SWIPE_DOWN
				PINCH_IN
				PINCH_OUT
			}
			PixelFormat* = enum (int32) {
				UNKNOWN
				UNCOMPRESSED_GRAYSCALE
				UNCOMPRESSED_GRAY_ALPHA
				UNCOMPRESSED_R5G6B5
				UNCOMPRESSED_R8G8B8
				UNCOMPRESSED_R5G5B5A1
				UNCOMPRESSED_R4G4B4A4
				UNCOMPRESSED_R8G8B8A8
				UNCOMPRESSED_R32
				UNCOMPRESSED_R32G32B32
				UNCOMPRESSED_R32G32B32A32
				UNCOMPRESSED_R16
				UNCOMPRESSED_R16G16B16
				UNCOMPRESSED_R16G16B16A16
				COMPRESSED_DXT1_RGB
				COMPRESSED_DXT1_RGBA
				COMPRESSED_DXT3_RGBA
				COMPRESSED_DXT5_RGBA
				COMPRESSED_ETC1_RGB
				COMPRESSED_ETC2_RGB
				COMPRESSED_ETC2_EAC_RGBA
				COMPRESSED_PVRT_RGB
				COMPRESSED_PVRT_RGBA
				COMPRESSED_ASTC_4x4_RGBA
				COMPRESSED_ASTC_8x8_RGBA
			}
			TextureFilter* = enum (int32) {
				POINT
				BILINEAR
				TRILINEAR
				ANISOTROPIC_4X
				ANISOTROPIC_8X
				ANISOTROPIC_16X
			}
			Quaternion* = quaternion128
			Gestures* = []Gesture
			Color* = [4]uint8
			Ray* = struct {
				position: Vector3
				direction: Vector3
			}
			Texture* = struct {
				id: uint32
				width: int32
				height: int32
				mipmaps: int32
				format: PixelFormat
			}
			NPatchInfo* = struct {
				source: Rectangle
				left: int32
				top: int32
				right: int32
				bottom: int32
				layout: NPatchLayout
			}
			RenderTexture* = struct {
				id: uint32
				texture: Texture
				depth: Texture
			}
			Camera2D* = struct {
				offset: Vector2
				target: Vector2
				rotation: real32
				zoom: real32
			}
			RayCollision* = struct {
				hit: bool
				distance: real32
				point: Vector3
				normal: Vector3
			}
			Camera3D* = struct {
				position: Vector3
				target: Vector3
				up: Vector3
				fovy: real32
				projection: CameraProjection
			}
			Transform* = struct {
				translation: Vector3
				rotation: Quaternion
				scale: Vector3
			}
			Image* = struct {
				data: ^void
				width: int32
				height: int32
				mipmaps: int32
				format: PixelFormat
			}
			BoundingBox* = struct {
				min: Vector3
				max: Vector3
			}
			Camera* = Camera3D
			Texture2D* = Texture
			RenderTexture2D* = RenderTexture
			TextureCubemap* = Texture
			MaterialMap* = struct {
				texture: Texture2D
				color: Color
				value: real32
			}
			Material* = struct {
				shader: Shader
				maps: ^MaterialMap
				params: [4]real32
			}
			ModelAnimation* = struct {
				boneCount: int32
				frameCount: int32
				bones: ^BoneInfo
				framePoses: ^^Transform
				name: [32]uint8
			}
			GlyphInfo* = struct {
				value: uint32
				offsetX: int32
				offsetY: int32
				advanceX: int32
				image: Image
			}
			Font* = struct {
				baseSize: int32
				glyphCount: int32
				glyphPadding: int32
				texture: Texture2D
				recs: ^Rectangle
				glyphs: ^GlyphInfo
			}
		)
		fn InitWindow*(width: int32, height: int32, title: str)
		fn BeginDrawing*()
		fn EndDrawing*()
		fn WindowShouldClose*(): bool
		fn ClearBackground*(color: Color)
	`,
	)
}
