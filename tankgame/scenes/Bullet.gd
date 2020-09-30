extends RigidBody2D

onready var bullet = $"."

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func fireBullet(direction,position):
	bullet.position = position
	bullet.rotation_degrees = direction
