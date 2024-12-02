extends Node2D

func _on_button_pressed() -> void:
	var bunnies = preload("res://Scenes/bunnies.tscn").instantiate()
	get_tree().root.add_child(bunnies)
	queue_free()
