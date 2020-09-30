extends Node2D

onready var firePosition = $Position2D
var bulletscene = load("res://scenes/Bullet.tscn")
var velocity = Vector2(1,1)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var bullet = bulletscene.instance()
	add_child(bullet)
	bullet.fireBullet(120,firePosition,velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
