class_name PlayerCharacter extends CharacterBody2D


@onready var movement_component := get_node("Components/PlayerMovement") as PlayerMovement
@onready var status_component := get_node("Components/PlayerStatus") as PlayerStatus


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		match (event as InputEventKey).keycode:
			KEY_1:
				status_component.add_status_effect(SpeedUpEffect.new())
			KEY_2:
				status_component.add_status_effect(ChangeColorEffect.new())
	return
