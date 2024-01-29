extends Node

#All stages
var playground_level = "res://scenes/levels/playground_level.tscn"
var stage_1 = "res://scenes/levels/stage_1.tscn"
var stage_2 = "res://scenes/levels/stage_2.tscn"
var stage_3 = "res://scenes/levels/stage_3.tscn"
var stage_4 = "res://scenes/levels/stage_4.tscn"
var stage_5 = "res://scenes/levels/stage_5.tscn"
var stage_6 = "res://scenes/levels/stage_6.tscn"
var stage_7 = "res://scenes/levels/stage_7.tscn"
var stage_8 = "res://scenes/levels/stage_8.tscn"
var stage_9 = "res://scenes/levels/stage_9.tscn"
var stage_10 = "res://scenes/levels/stage_10.tscn"
var stage_11 = "res://scenes/levels/stage_11.tscn"
var stage_12 = "res://scenes/levels/stage_12.tscn"
var stage_13 = "res://scenes/levels/stage_13.tscn"
var stage_14 = "res://scenes/levels/stage_14.tscn"
var stage_15 = "res://scenes/levels/stage_15.tscn"
var game_over = "res://scenes/ui/game_over.tscn"

var stages = [stage_1,stage_2,stage_3,stage_4,stage_5,stage_6,stage_7,stage_8,
			stage_9,stage_10,stage_11,stage_12,stage_13,stage_14,stage_15, game_over]

#All messages for the UI
var level_message_1 = "Fill the hole by clicking on the up arrow in the box"
var level_message_2 = "This time, fill two holes"
var level_message_3 = "Once a hole is filled, you can slide it over"
var level_message_4 = "Choose the right order"
var level_message_5 = "The block on the right is a wall, you can use it"
var level_message_6 = "Now, let`s mix everything we learned"
var level_message_7 = "Nice, now you are on your own"
var level_message_8 = "A different setup"
var level_message_9 = "Can you solve with four holes?"
var level_message_10 = "A different setup"
var level_message_11 = "You're quite good, so let's put more holes"
var level_message_12 = "And loooots of walls"
var level_message_13 = "And even more holes..."
var level_message_14 = "And more!"
var level_message_15 = "Do you wanna give up?"

var level_messages = [level_message_1,level_message_2,level_message_3,level_message_4,level_message_5,
					level_message_6,level_message_7,level_message_8,level_message_9,level_message_10,
					level_message_11,level_message_12,level_message_13,level_message_14,level_message_15]

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
