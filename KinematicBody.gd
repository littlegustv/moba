extends KinematicBody

var destination = Vector3.ZERO
var moving = false
var direction = Vector3.ZERO
var velocity = Vector3.ZERO
var SPEED = 1
var destination_angle = 0

onready var Projectile = preload("res://Projectile.tscn")

func shoot( target_point ):
	var projectile = Projectile.instance()
	get_tree().current_scene.add_child(projectile)
	projectile.translation = translation
	projectile.look_at( target_point, Vector3.UP )
	projectile.direction = -1 * projectile.get_transform().basis.z.normalized()
