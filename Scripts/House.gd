extends Node2D



func _ready():
	pass 



func _on_HouseBack_body_entered(body):
	if body.is_in_group('Player'):
		$Sprite.modulate.a = .3


func _on_HouseBack_body_exited(body):
	if body.is_in_group('Player'):
		$Sprite.modulate.a = 1


func _on_Button_pressed():
	var H = preload("res://Scenes/HouseInside.tscn")
	get_tree().change_scene_to(H)
	
	pass
