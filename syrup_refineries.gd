extends Button


func _on_pressed() -> void:
	if autoload.money >= autoload.limit2:
		autoload.money = autoload.money - autoload.limit2
		autoload.limit2 *= 1.23
		autoload.limit2 -= -7
		autoload.limit1 = round(autoload.limit1)
		autoload.amount2 = autoload.amount2 + 1
		autoload.syrupspawn()
