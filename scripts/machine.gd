extends Node


class Machine:
			
	var strength_x_repetition : int = 0;
	var energy : int = 0;
	var money: int = 0;

	func _init(strength_x_repetition, energy, money) -> void:
		self.strength_x_repetition = strength_x_repetition
		self.energy = energy 
		self.money = money
		
	func improve_machine(improvement) -> void:
		GymBro.money -= money
		self.fuerza_x_repe = strength_x_repetition + improvement
		
	func exercice() -> int:
		return strength_x_repetition 
										
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
