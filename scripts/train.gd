extends Node

class_name Train

var arm_exercise: Arm_exercise
var back_exercise: Back_exercise
var legs_exercise: Legs_exercise
var booty_xercise: Booty_exercise
var pecs_exercise: Pecs_exercise

class Exercise:
	var exercise: String
	var soreness: int
	var conditioning: int
	var energy: int
	
	func _init(exercise: String, soreness: int, conditioning: int, energy: int) -> void:
		self.exercise = exercise
		self.soreness = soreness
		self.conditioning = conditioning
		self.energy = energy

class Arm_exercise extends Exercise:
	func do_exercise() -> void:
		if GymBro.energy >= self.energy:
			GymBro.arm_condition = GymBro.arm_condition + self.conditioning
			GymBro.soreness = GymBro.soreness + self.soreness
			GymBro.energy = GymBro.energy - self.energy

class Back_exercise extends Exercise:
	func do_exercise() -> void:
		if GymBro.energy >= self.energy:
			GymBro.back_condition = GymBro.back_condition + self.conditioning
			GymBro.soreness = GymBro.soreness + self.soreness
			GymBro.energy = GymBro.energy - self.energy

class Legs_exercise extends Exercise:
	func do_exercise() -> void:
		if GymBro.energy >= self.energy:
			GymBro.legs_condition = GymBro.legs_condition + self.conditioning
			GymBro.soreness = GymBro.soreness + self.soreness
			GymBro.energy = GymBro.energy - self.energy

class Booty_exercise extends Exercise:
	func do_exercise() -> void:
		if GymBro.energy >= self.energy:
			GymBro.booty_condition = GymBro.booty_condition + self.conditioning
			GymBro.soreness = GymBro.soreness + self.soreness
			GymBro.energy = GymBro.energy - self.energy

class Pecs_exercise extends Exercise:
	func do_exercise() -> void:
		if GymBro.energy >= self.energy:
			GymBro.pecs_condition = GymBro.pecs_condition + self.conditioning
			GymBro.soreness = GymBro.soreness + self.soreness
			GymBro.energy = GymBro.energy - self.energy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	arm_exercise = Arm_exercise.new("Arm exercise", 10, 1, 5)
	back_exercise = Back_exercise.new("Back exercise", 10, 1, 10)
	legs_exercise = Legs_exercise.new("Legs exercise", 20, 1, 30)
	booty_xercise = Booty_exercise.new("Booty exercise", 20, 1, 25)
	pecs_exercise = Pecs_exercise.new("Pecs exercise", 10, 1, 15)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func exercise_arm () :
	GymBro.arm_condition = GymBro.arm_condition + 10
