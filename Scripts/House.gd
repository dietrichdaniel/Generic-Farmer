extends Node2D



func _ready():

	pass 


func _on_HouseBack_body_entered(body):
	if body.is_in_group('Player'):
		$Sprite.modulate.a = .3


func _on_HouseBack_body_exited(body):
	if body.is_in_group('Player'):
		$Sprite.modulate.a = 1

func exit_house():

	var player = load("res://Scenes/Player.tscn").instance()

	get_parent().add_child(player)
	player.position = $Position2D.position


