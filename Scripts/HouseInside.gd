extends Node2D

var player = preload("res://Scenes/Player.tscn").instance()


func _ready():

	if Global.new_day == false:
		add_child(player)
		player.position = $In.position

	if Global.new_day:
		add_child(player)
		player.position = $OnBed.position
		Global.new_day = false


func _on_DoorOut_exiting():
	Global.exiting_house = true
	get_tree().change_scene("res://Scenes/TestLevel.tscn")


