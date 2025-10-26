extends Node2D
#many important global variables
var money = 0
var multi = 1
var amount1 = 0
var limit1 = 2
var amount2 = 0
var limit2 = 50
var amount3 = 0
#code for spawning the syrup things on the screen.
var syr = amount2 + 1

var check = 1
var permy = 500
var permx = 0
var permposition = Vector2(permy,permx)
func syrupspawn():
	
	for number in range(0,syr):
		var syrupref = preload("res://syrupref.tscn")
		var syrup = syrupref.instantiate()
		if permx >= 500:
			permx = 100
			permy += 30
		elif permx >= 0 and permx <=500:
			permx += 50
		elif permx <= 0:
			permx = 200
		print(number)
		add_child(syrup)
		syrup.position = Vector2(permx, permy)
		if number == 0:
			check = 0
			syrup.queue_free()
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	syrupspawn()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://shopm.tscn')
	check = 0
