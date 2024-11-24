extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_leg_pressed() -> void:
	#GymBro.leg.training()
	if GymBro.energy >= 25:
		GymBro.legs.condition += 4- clampi(GymBro.pecs.soreness, 0, 4)
		GymBro.legs.soreness += 1
		GymBro.energy -= 25
		$"../../AudioExit".play()
	else:
		$"../../AudioFail".play()
	pass # Replace with function body.
