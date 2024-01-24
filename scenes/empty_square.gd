extends Node2D

signal box_entered

var is_empty:bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(box):
	if is_empty:
		is_empty = false
		if box.target_direction == Vector2.UP:
			while box.position.y > (position.y + 1):
				await _wait(0.001)
			box._stop()
			box.position.y = position.y
			box.position.x = position.x
		if box.target_direction == Vector2.DOWN:
			while box.position.y < (position.y - 1):
				await _wait(0.001)
			box._stop()
			box.position.y = position.y
			box.position.x = position.x
		if box.target_direction == Vector2.LEFT:
			while box.position.x > (position.x + 1):
				await _wait(0.001)
			box._stop()
			box.position.y = position.y
			box.position.x = position.x
		if box.target_direction == Vector2.RIGHT:
			while box.position.x < (position.x - 1):
				await _wait(0.001)
			box._stop()
			box.position.y = position.y
			box.position.x = position.x
		box._stop()


func _wait(timesec:float):
	var timer = get_tree().create_timer(timesec)
	await timer.timeout
