extends Node2D


func _on_button_pressed() -> void:
	var scary_berry_two = preload("res://Scenes/scary_berry_two.tscn").instantiate()
	get_tree().root.add_child(scary_berry_two)
	queue_free()
