extends KinematicBody2D

var walkSpeed = 50
var motion = Vector2()


func _physics_process(delta):
	movement()
	pass

func movement():
	if Input.is_action_pressed("ui_up"):
		motion.y = -walkSpeed
		#$AnimatedSprite.play("WalkUp")
	elif Input.is_action_pressed("ui_down"):
		motion.y = walkSpeed
		#$AnimatedSprite.play("WalkDown")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -walkSpeed
		#$AnimatedSprite.play("WalkLeft")
	elif Input.is_action_pressed("ui_right"):
		motion.x = walkSpeed
		#$AnimatedSprite.play("WalkRight")
	else:
		motion.x = 0
		motion.y = 0
	motion = move_and_slide(motion)
	pass

