extends CanvasLayer

signal restart_signal

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _set_level_message(message: String):
	$Message.text = message
	$LevelCount.text = str(Global.current_level) + "/15"


func _on_button_pressed():
	restart_signal.emit()
