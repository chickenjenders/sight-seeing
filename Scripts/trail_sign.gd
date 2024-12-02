extends Node2D

func _on_end_pressed() -> void:
	var night_walk = preload("res://Scenes/night_walk.tscn").instantiate()
	get_tree().root.add_child(night_walk)
	queue_free()

func _on_bunny_pressed() -> void:
	var bunny_walk = preload("res://Scenes/bunny_walk.tscn").instantiate()
	get_tree().root.add_child(bunny_walk)
	queue_free()
func _on_bunnys_pressed() -> void:
	var bunny_walk = preload("res://Scenes/bunny_walk.tscn").instantiate()
	get_tree().root.add_child(bunny_walk)
	queue_free()
func _on_bunnies_pressed() -> void:
	var bunny_walk = preload("res://Scenes/bunny_walk.tscn").instantiate()
	get_tree().root.add_child(bunny_walk)
	queue_free()
