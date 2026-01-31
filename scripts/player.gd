extends CharacterBody2D


const SPEED = 100


func _physics_process(delta: float) -> void:
	var y_direction = Input.get_axis("move_up","move_down")
	var x_direction = Input.get_axis("move_left","move_right")
	
	if y_direction:
		velocity.y = y_direction
	else:
		velocity.y = 0
	if x_direction:
		velocity.x = x_direction
	else:
		velocity.x = 0

	velocity = velocity.normalized() * SPEED

	
	move_and_slide()
