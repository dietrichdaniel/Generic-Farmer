extends CanvasLayer



func _ready():
	pass


func _process(delta):
	if Input.is_action_just_pressed("Open_Inventory"):
		$Inventory.visible = !$Inventory.visible
	
	if Input.is_action_pressed("scroll_up"):
		PlayerInventory.active_item_scroll_up()

	elif Input.is_action_pressed("scroll_down"):
		PlayerInventory.active_item_scroll_down()
