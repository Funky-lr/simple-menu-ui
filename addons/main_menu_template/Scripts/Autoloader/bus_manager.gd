extends Node

func _ready() -> void:
	ensure_audio_buses()
	
func ensure_audio_buses():
	if AudioServer.get_bus_index("Music") == -1:
		create_new_bus("Music")
	if AudioServer.get_bus_index("SFX") == -1:
		create_new_bus("SFX")
		
func create_new_bus(new_bus_Name: String):
	AudioServer.add_bus(AudioServer.bus_count)
	var new_idx := AudioServer.bus_count - 1
	AudioServer.set_bus_name(AudioServer.bus_count -1, new_bus_Name)
	AudioServer.set_bus_send(new_idx, "Master")
