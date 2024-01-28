extends Area2D

var playerInRange = false

func _on_body_entered(body):
	if body.name == "CharacterBody2D":  # Assuming the player node has the name "Player"
		playerInRange = true

func _on_body_exited(body):
	if body.name == "CharacterBody2D":
		playerInRange = false

func _process(delta):
	if playerInRange and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://room 1 beige.tscn")
