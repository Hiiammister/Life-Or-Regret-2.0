extends Button



func _on_pressed():
	get_tree().change_scene_to_file("res://read.tscn")
	DialogueManager.show_example_dialogue_balloon(load("res://read.dialogue"), "main")
	
