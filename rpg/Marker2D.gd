# Marker2D script

extends Marker2D

func _ready():
	# Set the initial position or load it from a save file, etc.
	position = Vector2(100, 100)

# Function to change the marker position
func set_marker_position(new_position):
	position = new_position
