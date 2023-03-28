extends Spatial


var basenumber
var zwei = Vector3(-2,0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	basenumber = randi() % 4

func Base():
	return

func move():
	self.translate(zwei)
