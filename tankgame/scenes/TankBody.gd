extends KinematicBody2D

var movement = Vector2.ZERO
var velocity = Vector2.ZERO
var MAX_SPEED = 150
onready var body = $"."
export var ROTATION_SPEED = 1
var degree = 0
var ACCELERATION = 1
var FRICTION = 3.5
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	move_and_collide(movement*MAX_SPEED*delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("right"):
		degree += ROTATION_SPEED*delta
		if degree == 360:
			degree = 0
	if Input.is_action_pressed("left"):
		degree -= ROTATION_SPEED*delta
		if degree == 0:
			degree = 360
			
	body.rotation = degree
	if Input.is_action_pressed("up"):
		velocity.y = sin(degree)
		velocity.x = cos(degree)
		velocity.normalized()
		movement = movement.move_toward(velocity,ACCELERATION*delta)
	elif Input.is_action_pressed("down"):
		velocity.y = sin(degree)
		velocity.x = cos(degree)
		velocity.normalized()
		velocity = -velocity
		movement = movement.move_toward(velocity,ACCELERATION*delta)
	else:
		movement = movement.move_toward(Vector2.ZERO,FRICTION*delta)
	

func get_rotation_degree():
	return body.rotation_degrees
