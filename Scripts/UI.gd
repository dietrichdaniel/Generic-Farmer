extends CanvasLayer



func _ready():
	pass


func _process(delta):
	if Input.is_action_just_pressed("Open_Inventory"):
		$Inventory.visible = !$Inventory.visible
