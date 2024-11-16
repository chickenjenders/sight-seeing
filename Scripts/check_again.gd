extends Node2D


func _on_button_pressed() -> void:
	var notice_note = preload("res://Scenes/notice_note.tscn").instantiate()
	get_tree().root.add_child(notice_note)
	queue_free()
