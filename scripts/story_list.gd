extends ItemList

var titles = []
var stories = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add(title, message):
	print(title)
	print(message)
	self.titles.append(title.text)
	self.stories.append(message.text)
	self.add_item(title.text)

func show_article(index, at_position, mouse_button_index):
	print(titles[index])
	print(stories[index])

func send_to_editors():
	var length = titles.length
	
	for i in range(length):
		var curr_title = titles[i]
		var curr_story = stories[i]
