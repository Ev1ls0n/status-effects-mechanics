class_name PlayerStatus extends PlayerComponent


const STATUS_EFFECT : PackedScene = preload("res://status_effect/status_effect.tscn")


func add_status_effect(effect_data: StatusEffectData) -> void:
	if not _find_status_effect(effect_data.name):
		var status_effect = STATUS_EFFECT.instantiate() as StatusEffect
		
		status_effect.effect_terminated.connect(_cancel_status_effect)
		status_effect.data = effect_data
		
		_apply_status_effect(status_effect.data)
		self.add_child(status_effect)
	return


func _apply_status_effect(effect_data: StatusEffectData) -> void:
	effect_data._apply_effect(player)
	return


func _cancel_status_effect(effect_data: StatusEffectData) -> void:
	effect_data._cancel_effect(player)
	return


func _find_status_effect(effect_name: String) -> bool:
	var result = false
	
	for status_effect in self.get_children():
		if effect_name == (status_effect as StatusEffect).data.name:
			result = true
			break
	
	return result
