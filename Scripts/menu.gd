extends Control
@onready var options_panel: Panel = $OptionsPanel
@onready var main_buttons: VBoxContainer = $CenterContainer/MainButtons
@onready var game_titel: Label = $GameTitel

func _ready():
	main_buttons.visible = true
	game_titel.visible = true
	options_panel.visible = false
	
func StartGame():
	#get_tree().change_scene_to_file("Replace with starting scene")
	pass

func QuitGame():
	get_tree().quit()
	
func OpenSettings():
	main_buttons.visible = false
	game_titel.visible = false
	options_panel.visible = true
	
func _on_back_OptionsButton_pressed() -> void:
	_ready()

func _on_start_button_pressed() -> void:
	StartGame()

func _on_settings_button_pressed() -> void:
	OpenSettings()

func _on_quit_button_pressed() -> void:
	QuitGame()
