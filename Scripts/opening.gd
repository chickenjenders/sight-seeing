extends Node2D

# Variables to track the current step
var current_step = 0
@onready var labels = [$"Second", $"Third"] # Replace with exact node names in quotes
@onready var button = $"Start"
@onready var click_continue = $"Continue" # Replace with the exact node name for the button

func _ready():
	# Ensure all labels and the button are initially hidden
	for label in labels:
		label.visible = false
	button.visible = false
	click_continue.visible = true

func _input(event):
	if event is InputEventMouseButton and event.pressed: # Detect mouse button press
		_progress_sequence()

func _progress_sequence():
	# Show the next element based on the current step
	if current_step < labels.size():
		labels[current_step].visible = true
		current_step += 1
	elif current_step == labels.size():
		button.visible = true # Show the button when all labels are revealed
		click_continue.visible = false # Hide the continue label when the button is visible
		current_step += 1
	# All steps completed, do nothing or add additional logic here


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	queue_free()
