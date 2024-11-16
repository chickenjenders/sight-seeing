extends Node2D


func _on_button_pressed() -> void:
	var scary_mushroom_one = preload("res://Scenes/scary_mushroom_one.tscn").instantiate()
	get_tree().root.add_child(scary_mushroom_one)
	queue_free()
