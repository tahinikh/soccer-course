class_name Player
extends CharacterBody2D

@export var speed : float

@onready var animation_player : AnimationPlayer = %AnimationPlayer

func _process(delta: float) -> void:
	var direction := Input.get_vector("p1_left", "p1_right", "p1_up", "p2_down")
	velocity = direction * speed
	
	if velocity.length() > 0:
		animation_player.play("Run")
	else:
		animation_player.play("idle")
