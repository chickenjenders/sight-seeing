extends Node2D


func _on_button_pressed() -> void:
	var read_note = preload("res://Scenes/read_note.tscn").instantiate()
	get_tree().root.add_child(read_note)
	queue_free()
