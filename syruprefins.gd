extends Node2D
var broken = false
var cost1 = int(autoload.amount1 * 5)
var cost2 = int(autoload.amount2 * 7)
var repair = round(cost1 + cost2)

@onready var butt = get_node("Button")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#var death = randi_range(30, 300)
	#await get_tree().create_timer(death).timeout
	#butt.show()
	#broken = true
	
	#if autoload.amount2 > 0:
	#	for val in range(autoload.amount2):
	#		print(autoload.amount2)
	#elif autoload.amount2 <= 0:
	#	pass


func _on_timer_timeout() -> void:
	if broken == false:
		autoload.money += 0.5
	elif broken == true:
		pass

	
		
