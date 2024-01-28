extends Area2D



var PersoninRange = false


func _on_body_entered(body):
	if body.name=="player":
		PersoninRange=true



func _on_body_exited(body):
	if body.name=="player":
		PersoninRange=false
		
func _process(delta):
	if PersoninRange and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://room 1 beige.tscn")
