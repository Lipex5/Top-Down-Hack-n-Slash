extends KinematicBody2D

export var speed = 50
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right"):
		motion.x = speed

	elif Input.is_action_just_pressed("ui_left"):
		motion.x = -speed

	elif Input.is_action_just_pressed("ui_up"):
		motion.y = -speed

	elif Input.is_action_just_pressed("ui_down"):
		motion.y = speed

	else:
		motion.x = 0
		motion.y = 0
	
	move_and_slide(motion)