extends Area2D


var PersoninRange = false


func _on_body_entered(body):
	if body.name=="CharacterBody2D":
		PersoninRange=true



func _on_body_exited(body):
	if body.name=="CharacterBody2D":
		PersoninRange=false
		
func _process(delta):
	if PersoninRange and Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_dialogue_balloon(load("res://room1bnpc.dialogue"),"main")
		return


