extends Node2D
export(String) var scene_to_load

func _ready():
	pass


func _on_Area2D_area_entered(area):
	get_tree().change_scene(scene_to_load)
