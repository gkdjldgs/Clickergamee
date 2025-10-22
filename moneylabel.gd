extends RichTextLabel


var texting = "Clicks: "
func _process(delta: float) -> void:
	var text = str(texting, str(autoload.money))
	self.text = (text)
