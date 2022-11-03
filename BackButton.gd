extends Control



func _on_Button_pressed():
	get_tree().change_scene("res://Title Screen.tscn")


func _on_HSlider2_value_changed(value):
	SoundPlayer.change_music_db(value) # Replace with function body.

func _on_HSlider_value_changed(value):
	SoundPlayer.change_sound_db(value)
	
