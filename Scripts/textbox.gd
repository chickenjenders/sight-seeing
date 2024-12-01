extends Control

@export var label: Label
@export var textbox_script: Array[String]
@export var button: Button

var current_index = 0

signal end_dialogue

func _ready():
	visible = false
	if not label:
		print("Label is not assigned.")
		return
	
	if textbox_script.size() > 0:
		label.text = textbox_script[0]
		visible = true
	
	if button:
		button.visible = false

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		advance_dialogue()

func advance_dialogue():
	current_index += 1

	if current_index < textbox_script.size():
		label.text = textbox_script[current_index]
	else:
		visible = false
		current_index = 0 # Reset the index when the text is finished
		emit_signal("end_dialogue")
		if button:
			button.visible = true

func display_text(text_to_display: String):
	label.text = text_to_display
	visible = true
	current_index = 0
	if button:
		button.visible = false
