extends Control

var day: int = 1

func _on_button_pressed() -> void:
	$HBoxContainer/Day.text = "Day: " + str(day)
	GymBro.energy += 100
	GymBro.arms.soreness = 0
	GymBro.legs.soreness = 0
	GymBro.pecs.soreness = 0
	GymBro.booty.soreness = 0
	GymBro.back.soreness = 0
	day += 1
	if day == 7 and GymBro.arms.condition >= 10 and GymBro.legs.condition >= 10 and GymBro.back.condition >= 10 and GymBro.booty.condition >= 10 and GymBro.pecs.condition >= 10:
		GymBro.money += 100
		GymBro.challenge = 1
	if day == 15 and GymBro.arms.condition >= 30 and GymBro.legs.condition >= 30 and GymBro.back.condition >= 30 and GymBro.booty.condition >= 30 and GymBro.pecs.condition >= 30:
		GymBro.money += 100
		GymBro.challenge = 2
	if day == 30 and GymBro.arms.condition >= 70 and GymBro.legs.condition >= 70 and GymBro.back.condition >= 70 and GymBro.booty.condition >= 70 and GymBro.pecs.condition >= 70:
		GymBro.money += 100
		GymBro.challenge = 3
		get_tree().change_scene_to_file("res://scenes/final.tscn")
		
	pass # Replace with function body.
