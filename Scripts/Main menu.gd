extends Node2D

func _ready():
	$"Main Container/Button Container/New".grab_focus()
	get_parent().get_node("Pause").disable_pause()
	get_parent().get_node("Inventory").disable_pause()
	get_parent().get_node("Pause/CanvasLayer/ColorRect").visible = false


func _on_Continue_button_up():
	print("continue pressed")

func _on_New_button_up():
	get_parent().get_node("Pause").enable_pause()
	get_parent().get_node("Inventory").enable_pause()
	get_parent().transition('res://Scenes/Level 1.tscn')


func _on_Exit_button_up():
	get_tree().quit()
