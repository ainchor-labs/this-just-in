extends Node2D

@export var email_client: ItemList
@export var y_client: ItemList
@export var list_item: Sprite2D
@export var story_list: ItemList

var email_json_obj
var y_json_obj
var time_per_day_sends = 300

var player_score = 0
var order_appeal = 50

signal send_email_story
signal send_y_story

# Helper Functions
func read_json_file(json_file_path):
	var file = FileAccess.open(json_file_path, FileAccess.READ)
	var content = file.get_as_text()
	var json = JSON.new()
	var finish = json.parse_string(content)
	return finish


# Main functions
# Called when the node enters the scene tree for the first time.
func _ready():
	list_item.visible = false
	email_json_obj = read_json_file("res://scripts/email_data.json")
	for email_item in email_json_obj:
		email_client.add_item(email_item["title"])
	
	y_json_obj = read_json_file("res://scripts/y_data.json")
	for y_item in y_json_obj:
		y_client.add_item(y_item["title"])

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Signal Functions
func on_item_clicked_email(index, at_position, mouse_button_index):
	print(mouse_button_index)
	list_item.set_title(email_json_obj[index]["title"])
	list_item.set_message(email_json_obj[index]["message"])
	list_item.set_index(index)
	list_item.set_array(email_json_obj)
	list_item.visible = true
	
func on_item_clicked_y(index, at_position, mouse_button_index):
	if mouse_button_index == 1:
		list_item.set_title(y_json_obj[index]["title"])
		list_item.set_message(y_json_obj[index]["message"])
		list_item.set_index(index)
		list_item.set_array(y_json_obj)
		list_item.visible = true

func send_to_story_generator(title, message, idx, arr):
	print("Made it")
	story_list.add(title, message)
	arr.remove_at(idx)
	if arr == email_json_obj:
		email_client.remove_item(idx)
	else:
		y_client.remove_item(idx)

func get_rid_of(idx, arr):
	arr.remove_at(idx)

func add_to_score(amount):
	player_score += amount

func modify_appeal(amount):
	order_appeal += amount
	if(order_appeal <= 0):
		print("Game Over")
