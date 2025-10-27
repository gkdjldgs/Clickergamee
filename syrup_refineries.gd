extends Button


func _on_pressed() -> void:
	if autoload.amount1 >= 3:
		if autoload.money >= autoload.limit2:
			autoload.money = autoload.money - autoload.limit2
			autoload.limit2 += 35
			autoload.limit2 *= 1.10
			autoload.limit2 = round(autoload.limit2)
			autoload.amount2 = autoload.amount2 + 1
			autoload.syrupspawn()
		else:
			pass
	else:
		pass
