class_name Player
extends CharacterBody2D

enum ControlScheme {CPU, P1, P2}

@export var control_scheme : ControlScheme
@export var speed : float

@onready var animation_player : AnimationPlayer = %AnimationPlayer

func _process(delta: float) -> void:
	var direction := KeyUtils.get_input_vector(control_scheme)
	velocity = direction * speed
	
	if velocity.length() > 0:
		animation_player.play("Run")
	else:
		animation_player.play("idle")
		
	move_and_slide()
		
		
