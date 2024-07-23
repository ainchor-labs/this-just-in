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
