class_name BodyPart

var name: String
var condition : int = 0;
var soreness : int = 0;
var fat : int = 0;
var rested : bool = false;
var soft_training : Training = Training.new(4,20,0.5,15);
var mid_training : Training = Training.new(4,20,0.5,35);
var hard_training : Training = Training.new(4,20,0.5,70);

func _init(name: String) -> void:
	name = name
	condition = 0
	soreness = 0
	fat = 0
	rested = 0

func traing(training : int) -> void:
	if training == 0:
		soft_training.training(self)
	if training == 1:
		mid_training.training(self)
	if training == 2:
		hard_training.training(self)		

	

func add_soreness(soreness : int) -> void:
	self.rested = false 
	self.soreness += soreness

func add_codition(ammount : int) -> void:
	self.rested = false
	self.condition += ammount

func add_fat(ammount : int) -> void:
	self.fat += ammount

func rest() -> void:
	self.soreness = 0;

class Training:
	var condition:int = 0;
	var soreness:int = 0;
	var fat:int = 0;
	var energy:int = 0;
	
	func _init(condition:int, soreness:int, fat:int, energy:int):
		self.condition = condition
		self.soreness = soreness
		self.fat = fat
	
	func improve_training():
		if GymBro.money > self.condition*10:
			GymBro.money -= self.condition*10
			self.condition += 10
			self.fat += 5
			self.energy -= 3
		else:
			print("no money bicth")
	
	func training(bodypart : BodyPart):
		if GymBro.energy > self.energy:
			GymBro.energy -= self.energy * energy
			bodypart.add_codition(self.condition)
			bodypart.add_soreness(self.soreness)
			bodypart.add_fat(-self.fat)
			
