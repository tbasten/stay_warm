extends Node2D

@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var rayCast2D = $RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_campfire_effect_area_body_entered(body):
	if body.has_method("warm_self"):
		body.call("warm_self")
		audio_stream_player_2d.play()

func _on_campfire_effect_area_body_exited(body):
	if body.has_method("cool_self"):
		body.call("cool_self")
		audio_stream_player_2d.stop()

