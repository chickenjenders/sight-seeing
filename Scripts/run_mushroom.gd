extends Node2D

@onready var button_one = $"Button"
@onready var button_two = $"Button2"
@onready var button_three = $"Button3"
@onready var animated_sprite = $"AnimatedSprite2D" # Reference to the AnimatedSprite2D node

func _on_button_pressed() -> void:
	# Start playing the animation
	animated_sprite.play("run") # Replace with the actual animation name
	button_two.visible = true
	button_one.visible = false

func _on_button_2_pressed() -> void:
	button_three.visible = true
	button_two.visible = false

func _on_button_3_pressed() -> void:
	var tripped_scene = preload("res://Scenes/tripped_scene.tscn").instantiate()
	get_tree().root.add_child(tripped_scene)
	queue_free()
