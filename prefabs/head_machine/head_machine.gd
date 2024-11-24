extends StaticBody3D
	
func show_menu() -> void:
	$Control.visible = true

func _on_close_pressed() -> void:
	$Control.visible = false
	pass # Replace with function body.

func _on_head_pressed() -> void:
	#GymBro.head.training()
	if GymBro.energy >= 10:
		GymBro.pecs.condition += 4 - clampi(GymBro.pecs.soreness, 0, 4)
		GymBro.pecs.soreness += 1
		GymBro.energy -= 10
		$"../../AudioExit".play()
	else:
		$"../../AudioFail".play()
	pass # Replace with function body.
