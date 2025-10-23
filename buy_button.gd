extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if autoload.money >= autoload.limit:
		autoload.money = autoload.money - autoload.limit
		autoload.multi = autoload.multi + 0.5
		autoload.limit = autoload.limit + 10 * 1.5
		print(autoload.limit)
		
