extends ARVRController

signal activated
signal deactivated

export var hide_for_no_tracking_confidence = false

onready var fpcontroller = self.get_owner()

onready var menutext = fpcontroller.get_node("ChangetoMenu")

var presscheck = false


func _ready():
	menutext.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var should_be_visible = true
	if get_is_active():
		if hide_for_no_tracking_confidence:
			# Get the tracking confidence
			var configuration = get_node("../Configuration")
			if configuration:
				var tracking_confidence = configuration.get_tracking_confidence(controller_id)
				if tracking_confidence == 0:
					should_be_visible = false
	else:
		should_be_visible = false

	if visible != should_be_visible:
		visible = should_be_visible
		if should_be_visible:
			print("Activated " + name)
			emit_signal("activated")
		else:
			print("Deactivated " + name)
			emit_signal("deactivated")
	

		if self.is_button_pressed(7):
			menutext.show()
			presscheck = true
			
		if self.is_button_pressed(1) && presscheck:
			menutext.hide()
		if self.is_button_pressed(7) && presscheck:
			pass
			#hier load to menu scence
