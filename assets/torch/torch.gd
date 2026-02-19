extends Area2D

@onready var flame: Sprite2D = $Flame

func _ready() -> void:
	flame.material.set("shader_parameter/offset", global_position * 0.1)


func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	var is_mouse_pressed: bool = (
		event is InputEventMouseButton and
		event.pressed and
		event.button_index == MOUSE_BUTTON_LEFT
	)
	if is_mouse_pressed:
		flame.visible = not flame.visible
