extends Node

func _process(delta):
	DialogueManager.show_example_dialogue_balloon(load("res://he.dialogue"),"main")
