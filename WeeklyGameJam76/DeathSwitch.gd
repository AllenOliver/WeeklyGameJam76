extends Area2D

var explosion = preload("res://Particles/Explosion.tscn")



func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	pass

func explode():
	var ex = explosion.instance()
	ex.position = position
	add_child(ex)
	ex.emitting = true
	pass


func _on_Area2D_body_entered(body):
	print("enter")
	var bodies =  get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			explode()
	
	pass # replace with function body


func _on_Area2D_body_exited(body):
	print("exit")
	pass # replace with function body
