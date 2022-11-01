extends Control

func _on_Back_pressed():
	get_tree().change_scene("res://NewMenu.tscn")


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value)


func _on_Button_pressed():
	get_tree().change_scene("res://Title Screen.tscn")
