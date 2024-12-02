extends Node2D

func _on_button_pressed() -> void:
	var night_walk = preload("res://Scenes/night_walk.tscn").instantiate()
	get_tree().root.add_child(night_walk)
	queue_free()
