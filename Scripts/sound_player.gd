extends Node

#onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main":"res://Scripts/Y2Mate.is - Lo-fi Type Beat - Rain-ESUTA7utJ6c-160k-1655641202407.mp3",
}

var sound_effects = {
	"jump":"res://second_jump.wav",
	"hit":"res://Scripts/hitHurt.wav"
}

#var music_db = 1
#var sound_db = 1

#func change_music_volume(value):
	#music_db = linear2db(value)
	#music_db.volume_db = music_db


#func change_sound_volume(value):
	#sound_db = linear2db(value)


#func _ready():
	#music_player.stream = load(music_tracks["main"])
	#add_child(music_db)
	#music_db.play()
	
	
#func play_sound_effect(sfx):
	#var sound = AudioStreamPlayer.new()
	#sound.stream = load(sound_effects[sfx])
	#add_child(sound)
	#sound.play()
	#yield(sound, "finished")
	#sound.queue_free()


onready var music = AudioStreamPlayer.new()

var music_db = 1
var sound_db = 1

func change_music_db(value):
	music_db = linear2db(value)
	music.volume_db = music_db

func change_sound_db(value):
	sound_db = linear2db(value)


func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.volume_db = sound_db
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
