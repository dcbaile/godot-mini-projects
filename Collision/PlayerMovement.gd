extends RigidBody3D

@export var move_speed : float = 2.0

func _physics_process(delta:float):
	
	if Input.is_key_pressed(KEY_A):
		linear_velocity.x = -move_speed
	if Input.is_key_pressed(KEY_D):
		linear_velocity.x = move_speed


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Tree"):
		get_tree().reload_current_scene()
