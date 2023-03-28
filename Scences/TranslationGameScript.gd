extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var test = $DNABase
var basescence = preload("res://Assets/TranslationGame/DNABase.tscn")
onready var spawnpos = $SpawnPosition.get_global_translation()

# Called when the node enters the scene tree for the first time.
func _ready():
	var test2 = basescence.instance()
	add_child(test2)
	test2.set_global_translation(spawnpos)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#test.translate(eins)


func _on_Pickable_dropped(pickable):
	var standardposition = $Position3D.get_global_translation()
	pickable.set_global_translation(standardposition)
	pickable.set_global_rotation(Vector3(0,0,0))



func _on_CheckArea_area_entered(area):
	if area.has_method("Base"):
		print(area.basenumber)


func _on_Timer_timeout():
	test.move()
