extends Sprite2D

@export var title: Label
@export var message: Label
var index
var json_array

signal message_approved(title, msg, idx, arr)

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
