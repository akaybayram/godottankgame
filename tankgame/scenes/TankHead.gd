extends Node2D

onready var tankHead = $"."
var degree = 0
export var ROTATION_SPEED = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var bulletScene = load("res://scenes/Bullet.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("ui_right"):
		degree += ROTATION_SPEED
		if degree == 360:
			degree = 0
	if Input.is_action_pressed("ui_left"):
		degree -= ROTATION_SPEED
		if degree == 0:
			degree = 360
	degree = clamp(degree,0,360)
#	print(degree)
func get_rotation_degree():
	return degree
