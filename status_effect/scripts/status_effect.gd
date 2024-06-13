class_name StatusEffect extends Node


signal effect_terminated(data: StatusEffectData)


var data : StatusEffectData

@onready var _duration_timer := get_node("DurationTimer") as Timer


func _ready() -> void:
	if data != null:
		_duration_timer.start(data.duration)
	return


func duration_reset(time_sec: float = -1) -> void:
	_duration_timer.start(time_sec)
	return


func _on_effect_terminated() -> void:
	effect_terminated.emit(data)
	queue_free()
	return
