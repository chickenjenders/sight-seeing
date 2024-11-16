extends Node2D



func _on_mushroom_pressed() -> void:
	var mushroom_one = preload("res://Scenes/mushroom_one.tscn").instantiate()
	get_tree().root.add_child(mushroom_one)
	queue_free()
	


func _on_berries_pressed() -> void:
	var berry_one = preload("res://Scenes/berry_one.tscn").instantiate()
	get_tree().root.add_child(berry_one)
	queue_free()
	
