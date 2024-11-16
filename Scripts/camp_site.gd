extends Node2D

func _on_button_pressed() -> void:
	var scary_berry_one = preload("res://Scenes/scary_berry_one.tscn").instantiate()
	get_tree().root.add_child(scary_berry_one)
	queue_free()
