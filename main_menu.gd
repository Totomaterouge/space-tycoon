extends Node2D

var playbtnpos = Vector2(0.0, 0.0)

func _ready():
	var hs = %play_button.size / 2
	var middle = get_viewport_rect().size / 2.0
	%play_button.position = middle - hs
	playbtnpos = middle - hs

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://index.tscn")









