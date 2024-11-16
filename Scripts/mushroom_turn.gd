extends Node2D

func _on_button_pressed() -> void:
	var missing_people = preload("res://Scenes/missing_people.tscn").instantiate()
	get_tree().root.add_child(missing_people)
	queue_free()
