extends CharacterBody2D

var speed = 128

func _on_canvas_layer_use_move_vector(move_vector):
	velocity = move_vector * speed
	move_and_slide()
