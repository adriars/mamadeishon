class_name BodyPart

var name: String
var condition : int = 0;
var soreness : int = 0;
var fat : int = 0;
var rested : bool = false;




func _init(name: String) -> void:
	name = name
	condition = 0
	soreness = 0
	fat = 0
	rested = 0

func train(training : int) -> void:
		if
	

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


class training:
	var condition:int = 0;
	var soreness:int = 0;
	var fat:int = 0;
	
	func _init(condition:int, soreness:int, fat:int):
		self.condition = condition
		self.soreness = soreness
		self.fat = fat
	
	func improve_training(money):
		if GymBro.money > self.condition*10:
			GymBro.money -= money
			self.condition += 10
			self.fat + =5
		else:
			print("no money bicth")
	
	func easy_training():
		
		
	func mid_training():
		
	func hard_push():
