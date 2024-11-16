extends Node2D

func _on_button_pressed() -> void:
	var mushroom_turn = preload("res://Scenes/mushroom_turn.tscn").instantiate()
	get_tree().root.add_child(mushroom_turn)
	queue_free()
