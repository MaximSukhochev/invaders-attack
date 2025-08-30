extends CharacterBody2D

@export var speed = 40

func _process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	_get_user_input()
		
	if velocity.x != 0:
		_handle_movement(delta, velocity)


func _handle_movement(delta: float, player_velocity) -> void:
	move_and_collide(player_velocity * delta)


func _get_user_input():
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
