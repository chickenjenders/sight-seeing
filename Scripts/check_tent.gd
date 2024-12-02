extends Node2D


func _on_button_pressed() -> void:
	var all_here_campsite = preload("res://Scenes/all_here_campsite.tscn").instantiate()
	get_tree().root.add_child(all_here_campsite)
	queue_free()
