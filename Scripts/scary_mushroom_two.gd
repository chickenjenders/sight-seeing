extends Node2D

func _on_button_pressed() -> void:
	var run_scene = preload("res://Scenes/run_scene.tscn").instantiate()
	get_tree().root.add_child(run_scene)
	queue_free()
