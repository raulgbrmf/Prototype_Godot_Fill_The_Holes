extends Area2D
class_name LevelFrontiers

signal restart_level

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_exited(body):
	restart_level.emit()
