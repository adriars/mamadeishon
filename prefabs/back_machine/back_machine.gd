extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_back_pressed() -> void:
	#GymBro.back.training()
	if GymBro.energy >= 25:
		GymBro.back.condition += 4-(GymBro.back.soreness)
		GymBro.back.soreness += 1
		GymBro.energy -= 25
		$"../../AudioExit".play()
	else:
		$"../../AudioFail".play()
	pass # Replace with function body.
