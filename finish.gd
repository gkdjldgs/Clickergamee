extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if autoload.huh == true:
		self.show()


func _on_pressed() -> void:
	if autoload.money >= 750:
		autoload.money -= 750
		autoload.what == true
		get_tree().change_scene_to_file("res://end.tscn")
