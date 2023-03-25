extends StaticBody



onready var highlightobject = $MeshInstance2

# Called when the node enters the scene tree for the first time.
func _ready():
	highlightobject.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

	
func hide_object(hide):
	if hide == true:
		highlightobject.hide()
	else:
		highlightobject.show()

func show_description(target):
	return target.get_owner().get_node("Description")
