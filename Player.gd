extends CharacterBody2D
var speed = 50


func _physics_process(delta):
	var dir = (get_global_mouse_position() -position).normalized()
	rotation = dir.angle()

	if (Input.is_action_pressed("i_up")):
		velocity = dir*speed

	move_and_slide()
