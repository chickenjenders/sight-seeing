extends Node2D

func _on_button_pressed() -> void:
	var scary_mushroom_two = preload("res://Scenes/scary_mushroom_two.tscn").instantiate()
	get_tree().root.add_child(scary_mushroom_two)
	queue_free()
