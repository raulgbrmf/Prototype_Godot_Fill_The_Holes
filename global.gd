extends Node

#All stages
var playground_level = "res://scenes/levels/playground_level.tscn"
var stage_1 = "res://scenes/levels/stage_1.tscn"
var stage_2 = "res://scenes/levels/stage_2.tscn"
var game_over = "res://scenes/ui/game_over.tscn"

var stages = [stage_1,stage_2,playground_level,game_over]

#All messages for the UI
var level_message_1 = "One box"
var level_message_2 = "Two boxes"
var level_message_3 = "Three boxes"

var level_messages = [level_message_1,level_message_2,level_message_3]

# Counter Variables
var current_level = 0
var number_of_clicks = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _increase_clicks():
	number_of_clicks += 1

func _get_clicks():
	return number_of_clicks
