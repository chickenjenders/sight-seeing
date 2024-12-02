extends Node2D

func _on_button_pressed() -> void:
	var scary_monster_two = preload("res://Scenes/scary_monster_two.tscn").instantiate()
	get_tree().root.add_child(scary_monster_two)
	queue_free()
