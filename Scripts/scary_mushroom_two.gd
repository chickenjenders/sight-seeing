extends Node2D

func _on_button_pressed() -> void:
	var monster_run = preload("res://Scenes/monster_run.tscn").instantiate()
	get_tree().root.add_child(monster_run)
	queue_free()
