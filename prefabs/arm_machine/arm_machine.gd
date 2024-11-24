extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_biceps_pressed() -> void:
	if GymBro.energy >= 15:
		GymBro.arms.condition += 5 - clampi(GymBro.pecs.soreness, 0, 4)
		GymBro.arms.soreness += 1
		GymBro.energy -= 15
		$"../../AudioExit".play()
	else:
		$"../../AudioFail".play()
	pass # Replace with function body.
