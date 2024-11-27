extends CharacterBody2D

@export var speed = 125
@export var rotate = -35

var direction = Vector2.ZERO

func _physics_process(delta: float) -> void:
	# Player Movement
	if Input.is_action_pressed("jump"):
		direction = Vector2.UP
		rotation_degrees = move_toward(rotation_degrees, rotate, 150 * delta)
	else:
		direction = Vector2.DOWN
		rotation_degrees = move_toward(rotation_degrees, -rotate, 150 * delta)
	
	velocity = direction * speed
	move_and_slide()
