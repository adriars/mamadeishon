extends Node3D

class Food:
	var energy: int
	
	func _init(energy: int) -> void:
		self.energy = energy
		
var money: int = 0
var energy: int = 0
var soreness: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var hamburger: Food = Food.new(10)
	pass # Replace with function body. 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func eat(food: Food) -> void:
	print(self.energy)
	self.energy = self.energy + food.energy
	print(self.energy)
