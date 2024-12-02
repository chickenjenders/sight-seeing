extends Node2D


func _on_button_pressed() -> void:
	var all_here = preload("res://Scenes/all_here.tscn").instantiate()
	get_tree().root.add_child(all_here)
	queue_free()
