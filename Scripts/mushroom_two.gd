extends Node2D

@onready var animated_sprite_one = $"AnimatedSprite2D"
@onready var animated_sprite_two = $"AnimatedSprite2D2"  # Reference the AnimatedSprite2D node

func _ready() -> void:
	# Play the animation as soon as the scene loads
	animated_sprite_one.play("deer") 
	animated_sprite_two.play("bear")
	
func _on_button_pressed() -> void:
	var poster = preload("res://Scenes/poster.tscn").instantiate()
	get_tree().root.add_child(poster)
	queue_free()
