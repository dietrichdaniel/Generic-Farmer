extends Button

export(PackedScene) var target_scene

var in_range = false


func _ready():
	pass

func _on_Door_pressed():
	if in_range == true:
		get_tree().change_scene_to(target_scene)
	

func _on_DoorRange_body_entered(body):
	if body.is_in_group('Player'):
		in_range = true



