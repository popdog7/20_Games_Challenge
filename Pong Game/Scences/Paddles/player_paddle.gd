extends CharacterBody2D

var SPEED = 500;

func _ready():
	pass


func _process(delta):
	velocity = movement() * SPEED
	move_and_slide()


func movement():
	var y = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	return Vector2(0,y)
