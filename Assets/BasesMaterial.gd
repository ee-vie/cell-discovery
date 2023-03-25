extends MultiMeshInstance
tool



func _ready():
	randomize()
	
	var newmaterial = SpatialMaterial.new()
	
	var random = RandomNumberGenerator.new()
	random.randomize()
	var rnumber = random.randi_range(0,3)

	#Adenin = Green
	if rnumber == 0:
		newmaterial.albedo_color = Color(0,255,0)
	#Thymin = Red
	if rnumber == 1:
		newmaterial.albedo_color = Color(255,0,0)
	#Cytosin = Yellow
	if rnumber == 2:
		newmaterial.albedo_color = Color(255,255,0)
	#Guanin = Purple
	if rnumber == 3:
		newmaterial.albedo_color = Color(128,0,128)
	
	self.material_override = newmaterial


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
