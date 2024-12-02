extends Node2D

func _on_button_pressed() -> void:
	var look_closer_poster = preload("res://Scenes/look_closer_poster.tscn").instantiate()
	get_tree().root.add_child(look_closer_poster)
	queue_free()
