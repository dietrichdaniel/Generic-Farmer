extends KinematicBody2D

const SPEED = 150

var motion = Vector2()

func _ready():
	print(Global.day_count)
	pass 

func _physics_process(delta):

	motion = move_and_slide(motion)

	if Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()

	if Input.is_action_pressed("Up"):
		motion.y = -SPEED

	elif Input.is_action_pressed("Down"):
		motion.y = SPEED

	else:
		motion.y = 0


	if Input.is_action_pressed("Left"):
		motion.x = -SPEED

	elif Input.is_action_pressed("Right"):
		motion.x = SPEED

	else:
		motion.x = 0
