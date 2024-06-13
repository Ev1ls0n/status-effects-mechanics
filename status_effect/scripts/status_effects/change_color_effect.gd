class_name ChangeColorEffect extends StatusEffectData


func _init() -> void:
	name = "ChangeColorEffect"
	return


func _apply_effect(player: PlayerCharacter) -> void:
	player.modulate = Color(0.565, 0.933, 0.565)
	return


func _cancel_effect(player: PlayerCharacter) -> void:
	player.modulate = Color(1, 1, 1)
	return
