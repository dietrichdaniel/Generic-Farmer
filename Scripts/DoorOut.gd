extends Area2D

signal exiting

var new_scene = load("res://Scenes/TestLevel.tscn")

func _ready():
	pass



func _process(delta):
	var overlap = get_overlapping_bodies()
	if not overlap.empty():
		emit_signal("exiting")
