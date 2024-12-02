extends Node2D

func _on_button_pressed() -> void:
	var look_closer_campsite = preload("res://Scenes/look_closer_campsite.tscn").instantiate()
	get_tree().root.add_child(look_closer_campsite)
	queue_free()
