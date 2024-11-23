extends Node

class_name BodyPart

var soreness : int = 0;
var condition : int = 0;
var fat : int = 0;
var rested : bool = false;

func add_soreness(soreness) -> void:
	self.rested = false 
	self.soreness += soreness

func add_codition(plus) -> void:
	self.rested = false
<<<<<<< HEAD
=======
	
>>>>>>> 48789da307a294cbe8aefb0a9038ee59bc3f5b85
	self.condition += plus

func add_fat(plus) -> void:
	self.fat += plus

func rest() -> void:
	self.soreness = 0;
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

<<<<<<< HEAD

=======
>>>>>>> 48789da307a294cbe8aefb0a9038ee59bc3f5b85
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
