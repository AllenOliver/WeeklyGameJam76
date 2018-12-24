extends KinematicBody2D

var walkSpeed = 200
var motion = Vector2()

func _physics_process(delta):
	movement()

	pass

func movement():
	if Input.is_action_pressed("ui_up"):
		motion.y = -walkSpeed
		$AnimatedSprite.playing = true

	elif Input.is_action_pressed("ui_down"):
		motion.y = walkSpeed
		$AnimatedSprite.playing = true

	elif Input.is_action_pressed("ui_left"):
		motion.x = -walkSpeed
		$AnimatedSprite.playing = true
		$AnimatedSprite.flip_h = true

	elif Input.is_action_pressed("ui_right"):
		motion.x = walkSpeed
		$AnimatedSprite.playing = true
		$AnimatedSprite.flip_h = false

	else:
		motion.x = 0
		motion.y = 0
		$AnimatedSprite.playing = false
		$AnimatedSprite.frame = 0
	motion = move_and_slide(motion)
	pass


