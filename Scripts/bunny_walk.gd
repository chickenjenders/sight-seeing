extends Node2D



func _on_button_pressed() -> void:
	var carrots = preload("res://Scenes/carrots.tscn").instantiate()
	get_tree().root.add_child(carrots)
	queue_free()
