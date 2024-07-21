extends Node2D

@export var email_client: ItemList
@export var y_client: ItemList

var email_json_obj
var y_json_obj

func read_json_file(json_file_path):
	var file = FileAccess.open(json_file_path, FileAccess.READ)
	var content = file.get_as_text()
	var json = JSON.new()
	var finish = json.parse_string(content)
	return finish

# Called when the node enters the scene tree for the first time.
func _ready():
	email_json_obj = read_json_file("res://scripts/email_data.json")
	for email_item in email_json_obj:
		email_client.add_item(email_item["message"])
	
	y_json_obj = read_json_file("res://scripts/y_data.json")
	for y_item in y_json_obj:
		y_client.add_item(y_item["message"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_item_clicked_email(index, at_position, mouse_button_index):
	print("Clicked Email Client")
	print(index)
	
func on_item_clicked_y(index, at_position, mouse_button_index):
	print("Clicked Y Client")
	print(index)
