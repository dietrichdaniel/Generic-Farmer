extends Node2D

var player = preload("res://Scenes/Player.tscn").instance()


func _ready():
	print(Global.new_day)
	if Global.new_day == false:
		add_child(player)
		player.position = $In.position
	if Global.new_day:
		add_child(player)
		player.position = $OnBed.position

