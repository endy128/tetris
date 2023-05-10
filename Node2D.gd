extends Node2D

const COLUMNS = 10
const ROWS = 20
const BLOCK_SIZE = 30
const GRID_WIDTH = 1
const START_X = 20
const START_Y = 30
const GRID_BG = "#000000"
const GRID_COLOUR = "#FFFFFF"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _draw():
	draw_rect( Rect2(START_X, START_Y, COLUMNS * BLOCK_SIZE, ROWS * BLOCK_SIZE), GRID_BG, true, GRID_WIDTH)
	# draw the column gridlines
	for i in range(START_X, BLOCK_SIZE * COLUMNS + START_X + 1, BLOCK_SIZE):
		draw_line( Vector2(i , START_Y), Vector2( i, ROWS * BLOCK_SIZE + START_Y), GRID_COLOUR, GRID_WIDTH)
	
	# draw the row gridlines
	for i in range(START_Y, BLOCK_SIZE * ROWS + START_Y + 1, BLOCK_SIZE):
		draw_line(Vector2(START_X, i), Vector2(COLUMNS * BLOCK_SIZE + START_X, i ), GRID_COLOUR, GRID_WIDTH)
	
