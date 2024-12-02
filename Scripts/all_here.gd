extends Node2D


func _on_button_pressed() -> void:
	var trail_sign = preload("res://Scenes/trail_sign.tscn").instantiate()
	get_tree().root.add_child(trail_sign)
	queue_free()
