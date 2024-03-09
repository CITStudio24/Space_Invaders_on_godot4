extends CharacterBody2D

const TORPEDO_TSN = preload("res://elements/torpedo/torpedo.tscn")
const SPEED = 300.0


func _physics_process(delta: float):
	if Input.is_action_just_pressed("ui_accept"):
		shot()
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED

	move_and_slide()


func shot():
	var rocket = TORPEDO_TSN.instantiate()
	rocket.global_position = global_position + Vector2(0, -22)
	add_child(rocket)
