extends Area2D

var playerInRange = false
var npcName = "player"  # Change this to the actual name of your NPC node

func _on_body_entered(body):
	if body.name == npcName:
		playerInRange = true

func _on_body_exited(body):
	if body.name == npcName:
		playerInRange = false

func _process(delta):
	if playerInRange and Input.is_action_just_pressed("ui_accept"):
		interact_with_npc()

func interact_with_npc():
	# Implement the NPC interaction logic here
	if playerInRange:
		DialogueManager.show_example_dialogue_balloon(load("res://testnpc2.dialogue"), "main")
		return
