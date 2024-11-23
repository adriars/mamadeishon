extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_biceps_pressed() -> void:
	if GymBro.energy >= 15:
		GymBro.arms.condition += 5 - GymBro.arms.soreness
		GymBro.arms.soreness += 0.5
		GymBro.energy -= 15
	pass # Replace with function body.
