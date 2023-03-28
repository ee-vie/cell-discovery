extends Spatial


var zwei = Vector3(-0.4,0,0.3)
var basenumber
# BaseNumeration: Adenin = 0; Uracil = 1; Cytosine = 2; Guanine = 3

# Called when the node enters the scene tree for the first time.
#func _ready():


		
		
func set_basenumber(number):
	self.basenumber = number
		
func get_basenumber():
	return basenumber

func Base():
	return

func move():
	self.translate(zwei)

func show_base(basenumber):
	if basenumber == 1:
		$adenine.show()
	if basenumber == 0:
		$uracile.show()
	if basenumber == 3:
		$cytosine.show()
	if basenumber == 2:
		$guanine.show()
