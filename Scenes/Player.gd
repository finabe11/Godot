extends KinematicBody2D

export (int) var speed = 120 
export (int) var jump_spped = -180
export (int) var gravity = 400
export (int) var slide_speed = 400

var velocity = Vector2.ZERO

export (float) var friction = 10
export (float) var acceleration = 25

enum state {IDLE, RUNNING, PUSHING, ROLL, JUMP, FALLING, ATTACK}

onready var player_state = state.IDLE

func _ready():
	$AnimationPlayer.play("idle ")
	pass

func update_animation(anim):
	$AnimationPlayer.play(anim)
	
func handle_state(state):
	pass 

func get_input():
	var dir = Input.get_action_strength("right") - Input.get_action_strength("left")
	if dir != 0:
		velocity.x = move_toward(velocity.x, dir*speed, acceleration)
	else:
		velocity.x = move_toward(velocity.x, 0, friction)
	
func _physics_process(delta):
	get_input()
	if velocity == Vector2.ZERO:
		player_state = state.IDLE
	elif velocity.x != 0 and Input.is_action_just_pressed("jump") and is_on_floor():
		player_state = state.JUMP
	elif velocity.x != 0:
		player_state = state.RUNNING
		
		if not is_on_floor()
	
