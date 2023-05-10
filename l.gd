extends CharacterBody2D
var move_vector = Vector2.ZERO
var move_distance = 5000
var is_active = true




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(global_position.x)
	# FIXME: needs to add in the size of the blocks
	if ( global_position.x > -166 and global_position.x < 160):
		if(Input.is_action_just_pressed("left")):
			_move(-move_distance)
		if(Input.is_action_just_pressed("right")):
			_move(move_distance)
	if(Input.is_action_just_pressed("clockwise")):
		_rotate(90)
	if(Input.is_action_just_pressed("anti_clockwise")):
		_rotate(-90)
	
func _move(direction):
	move_vector.x = direction
	set_velocity(move_vector)
	move_and_slide()

func _rotate(degree):
	rotation_degrees += degree

func drop(drop_vector):
	if(Input.is_action_pressed("down")):
		set_velocity(drop_vector * 10)
	else:	
		set_velocity(drop_vector)
	if global_position.y < 200:
		move_and_slide()

func has_landed():
	is_active = false
