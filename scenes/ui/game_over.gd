extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = str(Global.number_of_clicks) + " clicks"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
