extends RichTextLabel
var filler = "AMOUNT: "

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var texts = str(filler, str(autoload.amount2))
	self.text = (texts)
