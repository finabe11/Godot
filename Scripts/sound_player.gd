extends Node

onready var music = AudioStreamPlayer.new()




var music_db = 1
var sound_db = 1

func change_music_db(val):
	music_db = linear2db(val)


func change_sound_db(val):
	sound_db = linear2db(val)


func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
	
	
func _ready():
	pass
