class_name Exercise

var exercise: String
var soreness: int
var conditioning: int
var energy: int

func _init(exercise: String, soreness: int, conditioning: int, energy: int) -> void:
	self.exercise = exercise
	self.soreness = soreness
	self.conditioning = conditioning
	self.energy = energy
