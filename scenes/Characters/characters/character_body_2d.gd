class_name Player
extends CharacterBody2D

@export var speed : float

@onready var animation_player : AnimationPlayer =$AnimationPlayer
	
func _process(delta: float) -> void:
		var direction := Input.get_vector("p1_left", "p1_right", "p1_up", "p1_down")
		
		velocity = direction * speed
		#print(direction)
		#print(velocity)
		print(velocity.length())
		
		
		if velocity.length() > 0:
			animation_player.play("run") 
		else:
			animation_player.play("idle")
				
		
