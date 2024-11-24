extends Node

var hamburger: Food
var pre_workout: Food
var protein_shake: Food
var chicken_rice: Food

class Food:
	var food: String
	var price: int
	var energy: int	
	var fat:int

	func _init(food: String, price: int, energy: int, fat: int) -> void:
		self.food = food
		self.price = price
		self.energy = energy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hamburger = Food.new("Hamburger", 5, 20,30)
	$VBoxContainer/GridContainer/Hamburger.text = hamburger.food + "\nPrice: " + str(hamburger.price) + "\nEnergy: " + str(hamburger.energy)
	pre_workout = Food.new("Pre Workout", 20, 40, 0)
	$VBoxContainer/GridContainer/PreWorkout.text = pre_workout.food + "\nPrice: " + str(pre_workout.price) + "\nEnergy: " + str(pre_workout.energy)
	protein_shake = Food.new("Protein Shake", 100, 100, 0)
	$VBoxContainer/GridContainer/ProteinShake.text = protein_shake.food + "\nPrice: " + str(protein_shake.price) + "\nEnergy: " + str(protein_shake.energy)
	chicken_rice = Food.new("Chicken rice", 30, 60, 10)
	$VBoxContainer/GridContainer/ChickenRice.text = chicken_rice.food + "\nPrice: " + str(chicken_rice.price) + "\nEnergy: " + str(chicken_rice.energy)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func eat(food: Food) -> void:
	if GymBro.money >= food.price:
		GymBro.money = GymBro.money - food.price
		GymBro.energy = GymBro.energy + food.energy
		GymBro.fat = GymBro.fat + food.fat

func _on_hamburger_pressed() -> void:
	eat(hamburger)
	pass # Replace with function body.


func _on_pre_workout_pressed() -> void:
	eat(pre_workout)
	pass # Replace with function body.


func _on_protein_shake_pressed() -> void:
	eat(protein_shake)
	pass # Replace with function body.


func _on_chicken_rice_pressed() -> void:
	eat(chicken_rice)
	pass # Replace with function body.
