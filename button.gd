extends Button
var broken = refine.broken

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if refine.broken == true:
		self.show()
	elif refine.broken == false:
		self.hide()

func _on_pressed() -> void:
	if refine.broken == true:
		if autoload.money >= refine.repair:
			refine.broken = false
			self.hide()
