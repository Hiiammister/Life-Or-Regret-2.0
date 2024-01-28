extends CharacterBody2D

@export var speed: int = 35
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var teacher_in_range=false
func handleInput():
	var moveDirection = Input.get_vector("left", "right", "up", "down")
	
	velocity = moveDirection * speed
	
	# Set animations based on the direction of movement
	if moveDirection.x < 0:
		#animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("left")  # Replace "left_animation" with your actual animation name
	elif moveDirection.x > 0:
		#animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("right")  # Replace "right_animation" with your actual animation name
	elif moveDirection.y < 0:
		animated_sprite_2d.play("up")  # Replace "front_animation" with your actual animation name
	elif moveDirection.y > 0:
		animated_sprite_2d.play("down")  # Replace "back_animation" with your actual animation name

func _physics_process(delta):
	handleInput()
	
	move_and_slide()
	
