extends Button
var limit = autoload.amount1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if autoload.money >= limit:
		autoload.money = autoload.money - limit
		limit = limit + 7
		limit = limit * 1.2
		autoload.multi = autoload.multi + 0.5
		autoload.amount1 = autoload.amount1 + 1
