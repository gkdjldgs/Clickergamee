extends Control
var limit = 20 + autoload.multi * 1.2



func _on_buy_pressed() -> void:
	if limit > 5:
		if autoload.money >= limit:
			autoload.money = autoload.money - 20
			autoload.multi = autoload.multi + 1
			print(autoload.multi)
