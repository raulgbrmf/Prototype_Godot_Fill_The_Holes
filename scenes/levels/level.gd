extends Node2D
class_name Playground

var box_number:int = 0
var score:int = 0

signal level_clear


# Called when the node enters the scene tree for the first time.
func _ready():
	box_number = _count_box_number()
	_connect_empty_squares_score_signal()
	_connect_restart_signal()
	$UI._set_level_message(Global.level_messages[Global.current_level])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#get_tree().change_scene_to_file("res://scenes/levels/stage_2.tscn")
	pass

# Esta função será chamada recursivamente para contar os nós Box.
func _count_box_recursive(node):
	var count = 0
	if node is Box:
		count += 1
	for child in node.get_children():
		print(child)
		count += _count_box_recursive(child)
	return count

func _count_box(root):
	var count = 0
	var root_child = root.get_children()
	for child in root_child[1].get_children():
		if child is Box:
			count +=1
	return count

# Esta é a função principal que você chama para obter o número de nós Box.
func _count_box_number():
	var root = get_tree().get_root()
	return _count_box(root)

func _connect_empty_squares_score_signal():
	var count = 0
	var root = get_tree().get_root()
	var root_child = root.get_children()
	for child in root_child[1].get_children():
		if child is EmptySquare:
			child.connect("box_entered", Callable(self, "_on_box_entered_increase_score"))

func _connect_restart_signal():
	var count = 0
	var root = get_tree().get_root()
	var root_child = root.get_children()
	for child in root_child[1].get_children():
		if child is LevelFrontiers:
			child.connect("restart_level", Callable(self, "_on_restart_level"))

func _on_box_entered_increase_score():
	score += 1
	_verify_level_clear(score)

func _verify_level_clear(score):
	if score == box_number:
		level_clear.emit()

func _on_restart_level():
	get_tree().reload_current_scene()

func _on_level_clear():
	print("Level clear!!!")
	Global.current_level += 1
	get_tree().change_scene_to_file(Global.stages[Global.current_level])


func _on_ui_restart_signal():
	get_tree().reload_current_scene()
