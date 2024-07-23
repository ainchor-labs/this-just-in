extends Sprite2D

@export var list_item_view: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false

func show_monitor():
	print("Showing Left Monitor")
	self.visible = true

func close_monitor():
	print("Closing Left Monitor")
	if list_item_view.visible:
		list_item_view.visible = false
	self.visible = false
