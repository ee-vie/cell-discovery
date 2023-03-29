extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var collision = $StaticBody/CollisionShape

onready var er = $StaticBody/ER_rough/ER_rough

var er_material

# Called when the node enters the scene tree for the first time.
func _ready():
	er_material = er.get_active_material(0)
	
	#print(er_material.get_distance_fade())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(er_material.get_distance_fade())
