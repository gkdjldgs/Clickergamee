extends RichTextLabel
var texting = 'COST: '
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var text = str(texting, str(autoload.limit1))
	self.text = (text)
