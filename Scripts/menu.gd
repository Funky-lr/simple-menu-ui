extends Control


func _ready():
	%StartButton.pressed.connect(StartGame)
	%QuitButton.pressed.connect(QuitGame)
	## "%" in godot stands for get_node()long version below/needs to be checked on in nodetree
	# get_node("CenterContainer/VBoxContainer/StartButton").pressed.connect(StartGame())
	
func StartGame():
	#get_tree().change_scene_to_file("Replace with starting scene")
	pass

func QuitGame():
	get_tree().quit()
	
