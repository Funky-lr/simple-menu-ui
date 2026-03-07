extends Control

signal start_game_pressed
signal quit_game_pressed
signal options_pressed

@onready var start_button = $CanvasLayer/Control/MarginContainer/VBoxContainer/StartGameButton
@onready var options_button = $CanvasLayer/Control/MarginContainer/VBoxContainer/OptionsButton
@onready var quit_button = $CanvasLayer/Control/MarginContainer/VBoxContainer/QuitButton


# Called when the node enters the scene tree for the first time.
func _ready():
	
	start_button.pressed.connect(_on_start_game_pressed)
	options_button.pressed.connect(_on_options_pressed)
	quit_button.pressed.connect(_on_quit_game_pressed)
	
	start_button.grab_focus()
	
	
func _process(delta: float) -> void:
	pass

func _on_options_pressed() -> void:
	options_button.emit()

func _on_quit_game_pressed() -> void:
	quit_game_pressed.emit()

func _on_start_game_pressed() -> void:
	start_game_pressed.emit()
