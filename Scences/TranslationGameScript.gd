extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var checkarea = $CheckArea
onready var dna_spawnpos = $SpawnPosition.get_global_translation()
onready var base_highlight = $RNABasesHighlight
onready var rna_spawnpos = $RNASpawnPosition.get_global_translation()

var showbase

var dna_base = preload("res://Assets/MinigameComponents/DNABases.tscn")

var rna_base = preload("res://Assets/MinigameComponents/RNABases.tscn")

var dna_base_value

var rna_base_value

var firstbase

# BaseNumeration: Adenin = 0; Uracil = 1; Cytosine = 2; Guanine = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	firstbase = dna_base.instance()
	add_child(firstbase)
	firstbase.set_global_translation(dna_spawnpos)
	firstbase.show_base(firstbase.get_basenumber())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (dna_base_value == rna_base_value) && dna_base_value != null:
		var dna_base_instance = dna_base.instance()
		add_child(dna_base_instance)
		dna_base_instance.set_global_translation(dna_spawnpos)
		dna_base_instance.show_base(dna_base_instance.get_basenumber())
		
		
		var rna_base_instance = rna_base.instance()
		add_child(rna_base_instance)
		rna_base_instance.set_basenumber(rna_base_value)
		rna_base_instance.set_global_translation(rna_spawnpos)
		rna_base_instance.show_base(rna_base_instance.get_basenumber())
		
		for childnumber in get_child_count():
			var child = get_child(childnumber)
			if child.has_method("move"):
				child.move()
		
		dna_base_value = null
		rna_base_value = null

func _on_CheckArea_area_entered(area):
	if area.has_method("Base"):
			dna_base_value = area.get_basenumber()
			
	if area.has_method("Base1"):
		if area.has_method("Adenine"):
			base_highlight.show_adenine()
		if area.has_method("Uracile"):
			base_highlight.show_uracile()
		if area.has_method("Cytosine"):
			base_highlight.show_cytosine()
		if area.has_method("Guanine"):
			base_highlight.show_guanine()
		

func _on_CheckArea_area_exited(area):
	if area.has_method("Base1"):
		if area.has_method("Adenine"):
			base_highlight.hide_adenine()
		if area.has_method("Uracile"):
			base_highlight.hide_uracile()
		if area.has_method("Cytosine"):
			base_highlight.hide_cytosine()
		if area.has_method("Guanine"):
			base_highlight.hide_guanine()

func _on_Timer_timeout():
	firstbase.move()


func _on_PickableAdenine_dropped(pickable):
	var standardposition = $PositionAdenine.get_global_translation()
	pickable.set_global_translation(standardposition)
	pickable.set_global_rotation(Vector3(0,0,0))
	var pickablearea = pickable.get_node("Area")
	rna_base_value = pickablearea.get_checknumber()

func _on_PickableCytosine_dropped(pickable):
	var standardposition = $PositionCytosine.get_global_translation()
	pickable.set_global_translation(standardposition)
	pickable.set_global_rotation(Vector3(0,0,0))
	var pickablearea = pickable.get_node("Area")
	rna_base_value = pickablearea.get_checknumber()

func _on_PickableUracile_dropped(pickable):
	var standardposition = $PositionUracil.get_global_translation()
	pickable.set_global_translation(standardposition)
	pickable.set_global_rotation(Vector3(0,0,0))
	var pickablearea = pickable.get_node("Area")
	rna_base_value = pickablearea.get_checknumber()

func _on_PickableGuanine_dropped(pickable):
	var standardposition = $PositionGuanin.get_global_translation()
	pickable.set_global_translation(standardposition)
	pickable.set_global_rotation(Vector3(0,0,0))
	var pickablearea = pickable.get_node("Area")
	rna_base_value = pickablearea.get_checknumber()

func _on_RemoveArea_area_entered(area):
	area.queue_free()
