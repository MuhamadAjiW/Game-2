extends Node2D

func _ready():
	get_parent().reset_inventory()
	$"Main Container/Button Container/New".grab_focus()
	get_parent().get_node("Pause").disable_pause()
	get_parent().get_node("Inventory").disable_pause()
	get_parent().get_node("Pause/CanvasLayer/ColorRect").visible = false
	yield(get_parent(), "ready")
	$"/root/Global".audio.get_node("Theme").play()

func _on_Continue_button_up():
	print("continue pressed")

func _on_New_button_up():
	get_parent().get_node("Pause").enable_pause()
	get_parent().get_node("Inventory").enable_pause()
	get_parent().transition('res://Scenes/Level 1.tscn')

func _on_Exit_button_up():
	get_tree().quit()

func _on_Controls_button_up():
	$"Main Container".visible = false
	$"Control overlay".visible = true
	$"Control overlay/Close".grab_focus()


func _on_Close_button_up():
	$"Main Container".visible = true
	$"Control overlay".visible = false
	$"Main Container/Button Container/Controls".grab_focus()
