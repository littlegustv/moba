extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 5
var direction = Vector3.ZERO

func _physics_process(delta):
	translation += direction * speed * delta
