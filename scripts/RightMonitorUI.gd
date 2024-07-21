extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false

func show_monitor():
	self.visible = true

func close_monitor():
	self.visible = false
