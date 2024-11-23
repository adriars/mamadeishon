extends Node

class_name Calendar

var day:int = 0
var competition_day:int = 21;

func _init(competition_day:int) -> void:
	self.competition_day=competition_day

func check_competition_day() -> int:
	return competition_day - day;
	
func check_precompetition_day() -> int:
	var result = 7
	if(check_competition_day()!=0): 
		result = self.day%7
	return result

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
