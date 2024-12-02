extends AnimatedSprite2D

@export var scale_speed = 0.1  # How quickly the monster gets bigger
@export var max_scale = 3.0   # Maximum scale size before stopping the effect


func _ready():
	# Start the animation
	play("running")  # Play the animation directly
	# Ensure the scale starts small
	scale = Vector2(0.25, 0.25)
	

func _process(delta):
	# Scale up the monster until it reaches max_scale
	if scale.x < max_scale:
		scale += Vector2(scale_speed, scale_speed) * delta
