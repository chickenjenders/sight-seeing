extends Node2D




func _on_button_pressed() -> void:
	var scary_monster_one = preload("res://Scenes/scary_monster_one.tscn").instantiate()
	get_tree().root.add_child(scary_monster_one)
	queue_free()
