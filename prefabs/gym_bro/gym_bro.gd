extends Node3D


var money: int = 50
var energy: int = 100
var fat: int = 0
var soreness: int = 0
var arms: BodyPart = BodyPart.new("Arms")
var back: BodyPart = BodyPart.new("Back")
var legs: BodyPart = BodyPart.new("Legs")
var booty: BodyPart = BodyPart.new("Booty")
var pecs: BodyPart = BodyPart.new("Pecs")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body. 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func print_all() -> void:
	print(self.arm_condition)
	print(self.back_condition)
	print(self.legs_condition)
	print(self.booty_condition)
	print(self.pecs_condition)
	print(self.money)
	print(self.energy)
	print(self.soreness)
	
