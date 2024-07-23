extends Sprite2D

@export var title: Label
@export var message: Label
var index
var json_array

signal message_approved(title, msg, idx, arr)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_title(text_str):
	title.text = text_str
	
func set_message(text_str):
	message.text = text_str

func set_index(idx):
	self.index = idx

func set_array(arr):
	self.json_array = arr

func on_approve():
	message_approved.emit(title, message, index, json_array)
	self.visible = false
	
func on_deny():
	self.visible = false
