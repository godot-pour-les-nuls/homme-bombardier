extends KinematicBody2D

var velocity : Vector2 = Vector2(0, 0) 
var speed : int = 200
var gravity: int = 800

func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	velocity = move_and_slide(velocity, Vector2.UP)
	# velocity.y += gravity * delta
