extends Spatial

var distance
var target


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $RayCast.get_collider():
		distance = transform.origin.distance_to($RayCast.get_collision_point())
		$Scaler.scale.z = distance /2
	else:
		$Scaler.scale.z = $RayCast.cast_to.z

	if $RayCast.is_colliding():
		target = $RayCast.get_collider()
		if target.has_method("hide_object"):
			target.hide_object(false)
	else:
		if target == null or !target.has_method("hide_object"):
			pass
		else:
			target.hide_object(true)
			
#	if $RayCast.is_colliding():
#		var point = $RayCast.get_collision_point()
#
#		var origin = $RayCast.global_transform.origin
#
#		var distance = origin.distance_to(point)
#
#		$Scaler.scale.z = -distance * 1.70
#
#	else:
#
#		$Scaler.scale.z = $RayCast.cast_to.z
