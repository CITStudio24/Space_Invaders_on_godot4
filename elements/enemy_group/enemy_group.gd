extends Node2D


const ROW_STEP = 5
const SPEED_BOOST = 1.5

var direction = Vector2.RIGHT
var speed =  5

@onready var block_timer = $BlockTimer


func _process(delta: float):
	global_position += direction * speed * delta


func change_direction():
	if block_timer.time_left > 0:
		return
	direction = Vector2.LEFT if direction == Vector2.RIGHT else Vector2.RIGHT
	global_position.y += ROW_STEP
	speed += SPEED_BOOST
	block_timer.start()
