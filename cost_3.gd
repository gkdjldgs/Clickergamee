extends RichTextLabel
var texting = 'COST: 500 '
var textin = "OUT OF STOCK"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if autoload.huh == false:
		var text = str(texting)
		self.text = (text)
	elif autoload.huh == true:
		var text = str(textin)
		self.text = (text)
