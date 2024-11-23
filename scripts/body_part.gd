class_name BodyPart

var name: String
var condition : float = 0;
var soreness : float = 0;
var fat : float = 0;
var rested : bool = false;

func _init(name: String) -> void:
	name = name
	condition = 0
	soreness = 0
	fat = 0
	rested = 0

func add_soreness(soreness) -> void:
	self.rested = false 
	self.soreness += soreness

func add_codition(ammount) -> void:
	self.rested = false
	self.condition += ammount

func add_fat(ammount) -> void:
	self.fat += ammount

func rest() -> void:
	self.soreness = 0;
