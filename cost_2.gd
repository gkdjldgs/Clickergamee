extends RichTextLabel
var texting = 'COST: '
var texted = "LOCKED"
var amount = autoload.amount1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if autoload.amount1 >= 3:
		var texts = str(texting,str(autoload.limit2))
		self.text = texts
	else:
		self.text = texted
