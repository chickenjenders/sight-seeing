extends Sprite2D

@onready var animated_sprite_one = $"AnimatedSprite2D"
@onready var animated_sprite_two = $"AnimatedSprite2D2"  # Reference the AnimatedSprite2D node

func _ready() -> void:
	# Play the animation as soon as the scene loads
	animated_sprite_one.play("bunny") 
	animated_sprite_two.play("fox")
	
func _on_button_pressed() -> void:
	var mushroom_two = preload("res://Scenes/mushroom_two.tscn").instantiate()
	get_tree().root.add_child(mushroom_two)
	queue_free()
