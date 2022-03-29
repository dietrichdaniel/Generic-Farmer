extends Node2D

var inside_house = preload("res://Scenes/HouseInside.tscn").instance()
var player = preload("res://Scenes/Player.tscn").instance()


func _ready():
	if Global.exiting_house:
		add_child(player)
		player.position = $House/Position2D.global_position
		
	else: 
		add_child(player)
		player.position = $Position2D.position

