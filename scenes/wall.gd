extends StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("fade_in")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	body._stop()
