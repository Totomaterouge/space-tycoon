extends Node2D

var amount = 34

func save_amount():
	var savegame = FileAccess.open("user://save_game.data", FileAccess.WRITE)
	var json = JSON.stringify({"amount": amount})
	savegame.store_line(json)

func _ready():
	if not FileAccess.file_exists("user://save_game.save"):
		return
	
	var savegame = FileAccess.open("user://save_game.data", FileAccess.READ)
	var json_str = savegame.get_line()
	var json = JSON.new()
	var parse_result = json.parse(json_str)
	if not parse_result == OK:
		print("JSON Parse Error: ", json.get_error_message(), " in ", json_str, " at line ", json.get_error_line())
	amount = json.get_data()["amount"]






