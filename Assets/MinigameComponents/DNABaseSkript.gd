extends Spatial


var zwei = Vector3(-0.4,0,0)
var basenumber
# BaseNumeration: Adenin = 0; Uracil = 1; Cytosine = 2; Guanine = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	basenumber = randi() % 4

		
		
func get_basenumber():
	return basenumber

func Base():
	return

func move():
	self.translate(zwei)

func show_base(basenumber):
	if basenumber == 0:
		$adenine.show()
	if basenumber == 1:
		$uracile.show()
	if basenumber == 2:
		$cytosine.show()
	if basenumber == 3:
		$guanine.show()
