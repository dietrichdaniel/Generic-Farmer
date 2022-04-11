extends Panel

var item_class = preload("res://Scenes/Item.tscn")
var item = null

func _ready():
	
	if randi() % 2 == 0:
		item = item_class.instance()
		add_child(item)



func pickFromSlot():
	remove_child(item)
	var inventory_node = find_parent("Inventory")
	inventory_node.add_child(item)
	item = null


func putIntoSlot(new_item):
	item = new_item
	item.position = Vector2()
	item.scale.x = 1
	item.scale.y = 1
	var inventory_node = find_parent("Inventory")
	inventory_node.remove_child(item)
	add_child(item)
