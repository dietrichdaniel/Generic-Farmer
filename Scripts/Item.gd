extends Node2D


var item_name
var item_quantity


'dont know if the ready funcion will be used so Ill just let it here for now'
#func _ready():
#
#	var rand_val = randi() % 3
#
#	if rand_val == 0:
#		item_name = "Sword"
#	elif rand_val == 1:
#		item_name = "Hoe"
#	elif rand_val == 2:
#		item_name = "Wheat Seeds"
#
#	$TextureRect.texture = load("res://Sprites/Icons/" + item_name + ".png")
#
#	var stack_size = int(JSONData.item_data[item_name]["StackSize"])
#
#	item_quantity = randi() % stack_size + 1
#
#	if stack_size == 1:
#		$Label.visible = false
#	else:
#		$Label.text = String(item_quantity)



func set_item(nm, qt):
	item_name = nm
	item_quantity = qt
	$TextureRect.texture = load("res://Sprites/Icons/" + item_name + ".png")
	
	var stack_size = int(JSONData.item_data[item_name]["StackSize"])
	if stack_size == 1:
		$Label.visible = false
	else:
		$Label.visible = true
		$Label.text = String(item_quantity)



func add_item_quantity(amount_to_add):
	item_quantity += amount_to_add
	$Label.text = String(item_quantity)


func decrease_item_quantity(amount_to_remove):
	item_quantity -= amount_to_remove
	$Label.text = String(item_quantity)
