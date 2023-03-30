extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var rowner = get_owner()
onready var lcontroller = rowner.get_node("LeftHandController") 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if lcontroller.is_button_pressed(1): #Y button
		#get_tree().change_scene("res://Scences/CellMainScence.tscn")
	#if lcontroller.is_button_pressed(7): #X Button
		#get_tree().change_scene("res://Scences/TranskriptionGame.tscn")
	pass
