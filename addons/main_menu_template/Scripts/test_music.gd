extends AudioStreamPlayer

@export var target_bus: String = "Music"

func _ready() -> void:
	bus = target_bus
