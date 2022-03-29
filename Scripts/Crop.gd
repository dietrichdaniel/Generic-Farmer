extends Node2D


var days = Global.crop_type[0][1]
var type = Global.crop_type[0][0]


func _ready():
	pass


func crop_frame(soil_pos):
	var frame = Global.day_count - Global.crop_time[soil_pos]
	$Sprite.set_frame(frame)

