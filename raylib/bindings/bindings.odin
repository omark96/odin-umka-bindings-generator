//This file is generated. To generate it again, run:
// odin run umka-bindgen -custom-attribute=umka_fn
package example

import "../umka"
import "base:runtime"
import "core:fmt"

umka_add_bindings :: proc(ctx: ^umka.Context) {
	rv := umka.AddModule(
		ctx^,
		"bindings.um",
		`
		type (
			Rectangle* = struct {
				x: real32
				y: real32
				width: real32
				height: real32
			}
			VrDeviceInfo* = struct {
				hResolution: int32
				vResolution: int32
				hScreenSize: real32
				vScreenSize: real32
				eyeToScreenDistance: real32
				lensSeparationDistance: real32
				interpupillaryDistance: real32
				lensDistortionValues: real32
				chromaAbCorrection: real32
			}
			AutomationEvent* = struct {
				frame: uint32
				type: uint32
				params: int32
			}
			Shader* = struct {
				id: uint32
				locs: int32
			}
			AudioStream* = struct {
				buffer: ^void
				processor: ^void
				sampleRate: uint32
				sampleSize: uint32
				channels: uint32
			}
			Wave* = struct {
				frameCount: uint32
				sampleRate: uint32
				sampleSize: uint32
				channels: uint32
				data: ^void
			}
			AutomationEventList* = struct {
				capacity: uint32
				count: uint32
				events: AutomationEvent
			}
			FilePathList* = struct {
				capacity: uint32
				count: uint32
				paths: str
			}
			BoneInfo* = struct {
				name: byte
				parent: int32
			}
			VrStereoConfig* = struct {
				projection: Matrix
				viewOffset: Matrix
				leftLensCenter: real32
				rightLensCenter: real32
				leftScreenCenter: real32
				rightScreenCenter: real32
				scale: real32
				scaleIn: real32
			}
			Vector2* = [2]real32
			Vector4* = [4]real32
			quaternion128* = [4]real32
			Vector3* = [3]real32
			MouseButton* = enum (int32) {
				LEFT
				RIGHT
				MIDDLE
				SIDE
				EXTRA
				FORWARD
				BACK
			}
			GamepadAxis* = enum (int32) {
				LEFT_X
				LEFT_Y
				RIGHT_X
				RIGHT_Y
				LEFT_TRIGGER
				RIGHT_TRIGGER
			}
			ConfigFlag* = enum (int32) {
				VSYNC_HINT = 6
				FULLSCREEN_MODE
				WINDOW_RESIZABLE
				WINDOW_UNDECORATED
				WINDOW_HIDDEN = 7
				WINDOW_MINIMIZED = 9
				WINDOW_MAXIMIZED
				WINDOW_UNFOCUSED
				WINDOW_TOPMOST
				WINDOW_ALWAYS_RUN
				WINDOW_TRANSPARENT
				WINDOW_HIGHDPI = 13
				WINDOW_MOUSE_PASSTHROUGH
				BORDERLESS_WINDOWED_MODE
				MSAA_4X_HINT
				INTERLACED_HINT = 16
			}
			CameraProjection* = enum (int32) {
				PERSPECTIVE
				ORTHOGRAPHIC
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
			CameraMode* = enum (int32) {
				CUSTOM
				FREE
				ORBITAL
				FIRST_PERSON
				THIRD_PERSON
			}
			CubemapLayout* = enum (int32) {
				AUTO_DETECT
				LINE_VERTICAL
				LINE_HORIZONTAL
				CROSS_THREE_BY_FOUR
				CROSS_FOUR_BY_THREE
			}
			TextureFilter* = enum (int32) {
				POINT
				BILINEAR
				TRILINEAR
				ANISOTROPIC_4X
				ANISOTROPIC_8X
				ANISOTROPIC_16X
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
			NPatchLayout* = enum (int32) {
				NINE_PATCH
				THREE_PATCH_VERTICAL
				THREE_PATCH_HORIZONTAL
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
			TextureWrap* = enum (int32) {
				REPEAT
				CLAMP
				MIRROR_REPEAT
				MIRROR_CLAMP
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
			FontType* = enum (int32) {
				DEFAULT
				BITMAP
				SDF
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
			Quaternion* = quaternion128
