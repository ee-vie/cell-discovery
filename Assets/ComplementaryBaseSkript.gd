extends Spatial

#var visiblecheck = false

func _ready():
	$Area/MeshInstance2.hide()

#func _on_Area_body_entered(body):
#


func _on_Area_area_entered(area):
	if area.has_method("Base1"):
		$Area/MeshInstance2.show()
	print("TEST")
