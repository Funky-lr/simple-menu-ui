extends Control
@onready var v_box_container: VBoxContainer = $CenterContainer/VBoxContainer
@onready var options_panel: Panel = $OptionsPanel
@onready var main_buttons: VBoxContainer = $CenterContainer/MainButtons
@onready var game_titel: Label = $GameTitel

func _ready():
	%StartButton.pressed.connect(StartGame)
	%QuitButton.pressed.connect(QuitGame)
	%SettingsButton.pressed.connect(OpenSettings)
	## "%" in godot stands for get_node()long version below/needs to be checked on in nodetree
	# get_node("CenterContainer/VBoxContainer/StartButton").pressed.connect(StartGame())
	main_buttons.visible = true
	game_titel.visible = true
	options_panel.visible = false
	pass
	
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
