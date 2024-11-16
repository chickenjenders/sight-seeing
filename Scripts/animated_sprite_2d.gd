extends AnimatedSprite2D
# Speed of rotation in degrees per second
var rotation_speed = 220.0  # Adjust as needed

func _process(delta):
	# Update the sprite's rotation
	rotation_degrees += rotation_speed * delta
