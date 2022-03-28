extends Node2D

var has_crop = false
export(PackedScene) var Crop

func _ready():
	print(Global.soil_list)
	print(Global.crop_days)
	var soil_name = $".".name
	if soil_name in Global.soil_list:
		has_crop = true
		var soil_pos = Global.soil_list.find(soil_name)

		Global.crop_days[soil_pos] -= 1
		if Global.crop_days[soil_pos] == 0:
			Global.crop_days.remove(soil_pos)
			Global.soil_list.remove(soil_pos)
	pass




func _on_Button_pressed():
	if has_crop == false:
		var c = Crop.instance()
		get_parent().add_child(c)
		Global.soil_list.append(name)
		has_crop = true
		

	
	pass
