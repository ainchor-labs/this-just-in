extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false

func show_monitor():
	print("Showing Left Monitor")
	self.visible = true

func close_monitor():
	print("Closing Left Monitor")
	self.visible = false
