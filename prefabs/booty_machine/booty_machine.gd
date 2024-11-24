extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_booty_pressed() -> void:
	#GymBro.booty.training()
	if GymBro.energy >= 20:
		GymBro.booty.condition += 4-(GymBro.booty.soreness)
		GymBro.booty.soreness += 1
		GymBro.energy -= 20
		$"../../AudioExit".play()
	else:
		$"../../AudioFail".play()
	pass # Replace with function body.
