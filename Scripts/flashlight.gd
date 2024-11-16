extends Node2D
func _on_button_pressed() -> void:
	var berry_turn = preload("res://Scenes/berry_turn.tscn").instantiate()
	get_tree().root.add_child(berry_turn)
	queue_free()
