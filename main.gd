extends Node

var score = 0
var move_speed = 150
var acceleration = 2
var drop_speed = 50
var drop_vector = Vector2(0, drop_speed)




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_speed += acceleration * delta
	get_node("l").drop(drop_vector)
	#drop_vector += Vector2(0, drop_speed)

func _spawn_shape():
	pass
	
func _check_win_lose():
	pass
	
func _check_lines():
	pass
	
func _del_line():
	pass
	
func _drop_blocks():
	pass

