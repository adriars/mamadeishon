class_name BodyPart

var body_part: String
var condition: int
var soreness: int

func _init(body_part: String) -> void:
	self.body_part = body_part
	self.condition = 0
	self.soreness = 0
