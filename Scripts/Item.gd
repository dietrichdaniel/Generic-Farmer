extends Control


func _ready():
		if randi()%2 == 0:
			$TextureRect.texture = load('res://Sprites/Sword.png')
		elif randi()%2 == 1:
			$TextureRect.texture = load('res://Sprites/Hoe.png')
		elif randi()%3 == 2:
			$TextureRect.texture = load('res://Sprites/WheatSeeds.png')
