extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if autoload.money >= autoload.limit1:
		autoload.money = autoload.money - autoload.limit1
		autoload.limit1 += 7
		autoload.limit1 *= 1.2
		autoload.limit1 = round(autoload.limit1)
		autoload.multi = autoload.multi + 0.5
		autoload.amount1 = autoload.amount1 + 1
