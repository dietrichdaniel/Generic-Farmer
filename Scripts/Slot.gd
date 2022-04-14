extends Panel

var item_class = preload("res://Scenes/Item.tscn")
var item = null
var slot_index
var slot_type

enum SlotType {
	HOTBAR = 0,
	INVENTORY,
}

func _ready():
	
	if randi() % 2 == 0:
		item = item_class.instance()
		add_child(item)



func pickFromSlot():
	remove_child(item)
	var inventory_node = find_parent("Inventory")
	inventory_node.add_child(item)
	item.scale.x = .5
	item.scale.y = .5
	item = null


func putIntoSlot(new_item):
	item = new_item
	item.position = Vector2()
	item.scale.x = 1
	item.scale.y = 1
	var inventory_node = find_parent("Inventory")
	inventory_node.remove_child(item)
	add_child(item)

func initialize_item(item_name, item_quantity):
	if item == null:
		item = item_class.instance()
		add_child(item)
		item.set_item(item_name, item_quantity)
	else:
		item.set_item(item_name, item_quantity)
