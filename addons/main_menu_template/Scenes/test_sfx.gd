extends AudioStreamPlayer

@export var target_bus: String = "SFX"

func _ready() -> void:
	bus = target_bus
