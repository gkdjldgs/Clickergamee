extends Node2D
var broken = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var death = randi_range(30, 300)
	await get_tree().create_timer(death).get_timeout
	get_tree()
	
	
	#if autoload.amount2 > 0:
	#	for val in range(autoload.amount2):
	#		print(autoload.amount2)
	#elif autoload.amount2 <= 0:
	#	pass


func _on_timer_timeout() -> void:
	if broken == false:
		autoload.money += 1
	elif broken == true:
		pass

		
