extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_head_pressed() -> void:
	GymBro.head.training()
	if GymBro.energy >= 25:
		GymBro.head.condition += 4
		GymBro.head.soreness += 15
		GymBro.energy -= 25
	pass # Replace with function body.
