extends Node2D

onready var tankBody = $TankBody
onready var tankHead = $TankHead

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tankHead.rotation_degrees = tankBody.rotation_degrees + tankHead.get_rotation_degree()
	tankHead.position.x = tankBody.position.x
	tankHead.position.y = tankBody.position.y
