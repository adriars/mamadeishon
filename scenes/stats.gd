extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Label.add_theme_color_override("font_color",Color.GREEN)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	$VBoxContainer/Label.text = "Money: " + str(GymBro.money) + "\nEnergy: " + str(GymBro.energy) + "\nArm condition: " + str(GymBro.arms.condition) + "\nLeg condition: " + str(GymBro.legs.condition) + "\nBack condition: " + str(GymBro.back.condition) + "\nBooty condition: " + str(GymBro.booty.condition) + "\nPecs condition: " + str(GymBro.pecs.condition)
	pass
