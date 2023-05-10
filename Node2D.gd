extends Node2D

const COLUMNS = 10
const ROWS = 20
const BLOCK_SIZE = 29
const GRID_WIDTH = 1
const START_X = 10
const START_Y = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _draw():
	draw_rect( Rect2(START_X, START_Y, (COLUMNS * BLOCK_SIZE + (10 * GRID_WIDTH)) - START_X, (ROWS * BLOCK_SIZE + (10 * GRID_WIDTH)) - START_Y), "#0000FF", true, 1)
	for i in range(START_X, ((BLOCK_SIZE + GRID_WIDTH ) * COLUMNS) + GRID_WIDTH, BLOCK_SIZE):
		draw_line( Vector2(i ,START_Y), Vector2( i, ROWS * BLOCK_SIZE + (COLUMNS * GRID_WIDTH)), "#FFFFFF", 1)
	for i in range(START_Y, 611, BLOCK_SIZE):
		draw_line(Vector2(START_X, i), Vector2(COLUMNS * BLOCK_SIZE + (COLUMNS * GRID_WIDTH), i ), "#FFFFFF", 1)
	
