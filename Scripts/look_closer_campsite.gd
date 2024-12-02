extends Node2D


func _on_button_pressed() -> void:
	var check_tent = preload("res://Scenes/check_tent.tscn").instantiate()
	get_tree().root.add_child(check_tent)
	queue_free()
