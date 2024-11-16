extends Node2D

func _on_button_pressed() -> void:
	var camp_site = preload("res://Scenes/camp_site.tscn").instantiate()
	get_tree().root.add_child(camp_site)
	queue_free()
