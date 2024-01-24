extends CharacterBody2D


var SPEED = 500
var moving:bool = false
var collided:bool = false
var target_direction = Vector2.ZERO


func _ready():
	#Conects the signs of input_event of each Area2d
	$AreaUp.direction =  Vector2.UP
	$AreaLeft.direction =  Vector2.LEFT
	$AreaRight.direction =  Vector2.RIGHT
	$AreaDown.direction =  Vector2.DOWN

	# Agora você conecta sem passar a direção como argumento
	$AreaLeft.connect("custom_input_event", Callable(self, "_on_Area_input_event"))
	$AreaUp.connect("custom_input_event", Callable(self, "_on_Area_input_event"))
	$AreaRight.connect("custom_input_event", Callable(self, "_on_Area_input_event"))
	$AreaDown.connect("custom_input_event", Callable(self, "_on_Area_input_event"))
	

func _process(delta):
	if moving:
		_move_step(delta)


func _on_Area_input_event(area,event):
	if event is InputEventMouseButton and event.pressed:
		_move_box(area.direction)

	
func _move_box(direction):
	if not moving:
		moving = true
		target_direction = direction

func _move_step(delta):
	var movement = target_direction * SPEED * delta
	position += movement
	if move_and_slide() and not collided:
		collided = true
		_stop()
	if not move_and_slide():
		collided = false

func _stop():
	moving = false

