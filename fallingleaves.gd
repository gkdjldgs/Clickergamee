extends Button


func _on_pressed() -> void:
	print(autoload.amount2)
	if autoload.amount2 >= 4:
		if autoload.money >= 250 and autoload.huh == false:
			autoload.money = autoload.money - 250
			autoload.huh = true
		elif autoload.huh == true:
			pass
