class_name SpeedUpEffect extends StatusEffectData


func _init() -> void:
	name = "SpeedUpEffect"
	return


func _apply_effect(player: PlayerCharacter) -> void:
	player.movement_component.speed *= 2.0
	return


func _cancel_effect(player: PlayerCharacter) -> void:
	player.movement_component.speed /= 2.0
