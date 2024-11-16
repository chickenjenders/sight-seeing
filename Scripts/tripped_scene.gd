extends Node2D

@onready var animated_sprite = $"AnimatedSprite2D"  # Reference the AnimatedSprite2D node

func _ready() -> void:
	# Play the animation as soon as the scene loads
	animated_sprite.play("trip")  # Replace "your_animation_name" with the actual animation name

func _on_button_pressed() -> void:
	var check_again = preload("res://Scenes/check_again.tscn").instantiate()
	get_tree().root.add_child(check_again)
	queue_free()
