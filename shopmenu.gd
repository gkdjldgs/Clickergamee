extends Control




func _on_buy_pressed() -> void:
	if autoload.money >= 20:
		autoload.money = autoload.money - 20
		autoload.level = autoload.level + 1
