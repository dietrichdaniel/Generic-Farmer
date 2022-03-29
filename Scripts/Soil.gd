extends Node2D


var has_crop = false
var crop = preload("res://Scenes/Crop.tscn").instance()
var crop_time 


func _ready():

	crop_time = Global.crop_time

	if not crop_time.empty():

		crop_time = Global.crop_time[0]

		if [name, crop.type] in Global.soil_planted:
			
			add_child(crop)
			has_crop = true
			var soil_pos = Global.soil_planted.find([name,crop.type])
			Global.crop_time[soil_pos] -= 1

			crop.crop_frame(soil_pos)

			if Global.crop_time[soil_pos] == 0:
				Global.soil_planted.remove(soil_pos)
				Global.crop_time.remove(soil_pos)


func _on_Button_pressed():

	if has_crop == false:

		add_child(crop)
		crop.position = $Position2D.position
		Global.soil_planted.append([name, crop.type])
		Global.crop_time.append(crop.days)
		has_crop = true



