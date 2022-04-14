extends Node2D

const SlotClass = preload("res://Scripts/Slot.gd")
onready var hotbar = $GridContainer
onready var slots = hotbar.get_children()

func _ready():
	for i in slots.size():
#		slots[i].connect("gui_input", self, "slot_gui_input", [slots[i]])
		slots[i].slot_index = i
		slots[i].slot_type = SlotClass.SlotType.HOTBAR
	initialize_hotbar()

func initialize_hotbar():
	for i in range(slots.size()):
		if PlayerInventory.hotbar.has(i):
			slots[i].initialize_item(PlayerInventory.hotbar[i][0],PlayerInventory.hotbar[i][1])
