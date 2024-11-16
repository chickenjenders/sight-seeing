extends CanvasLayer


func _on_button_pressed() -> void:
	var opening = preload("res://Scenes/opening.tscn").instantiate()
	get_tree().root.add_child(opening)
	queue_free()
