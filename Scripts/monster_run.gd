extends Node2D

@onready var animated_sprite_one = $"monster" # Reference the AnimatedSprite2D node
@onready var timer = $CatchTimer                 # Reference the Timer node

func _ready() -> void:
	# Play the animation as soon as the scene loads
	animated_sprite_one.play("running")

	# Set the timer wait time and start it
	timer.wait_time = 8.0
	timer.start()
	print("Timer started for 10 seconds.")  # Debug to confirm the timer starts

func _on_catch_timer_timeout() -> void:
	print("Timer timed out! Loading next scene.")  # Debug to ensure this triggers
	get_tree().change_scene_to_file("res://Scenes/you_died.tscn") 


func _on_button_pressed() -> void:
	var run_scene = preload("res://Scenes/run_scene.tscn").instantiate()
	get_tree().root.add_child(run_scene)
	queue_free()
