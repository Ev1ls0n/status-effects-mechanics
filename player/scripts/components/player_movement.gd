class_name PlayerMovement extends PlayerComponent


## The player character's motion controller.


@export_group("Movement Configuration")
@export var speed : float = 100.0 ## The movement speed of a player character.


func _physics_process(_delta: float) -> void:
	var input_direction : Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_direction:
		player.velocity = input_direction * speed
	else:
		player.velocity = Vector2.ZERO
	
	player.move_and_slide()
	
	return
