extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var hamburger: Food = Food.new("Hamburger", 5, 10)
	eat(hamburger)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func eat(food: Food) -> void:
	self.energy = self.energy + food.energy
