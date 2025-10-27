extends Button


func _on_pressed() -> void:
	if autoload.money >= autoload.limit3:
		autoload.money = autoload.money - autoload.limit3
		autoload.huh = true
