extends Button


func _on_pressed() -> void:
	if autoload.amount2 >= 4:
		if autoload.money >= autoload.limit3 and autoload.huh == false:
			autoload.money = autoload.money - autoload.limit3
			autoload.huh = true
		elif autoload.huh == true:
			pass
