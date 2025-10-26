extends Node2D
#many important global variables
var money = 0
var multi = 1
var amount1 = 0
var limit1 = 2
var amount2 = 20
var limit2 = 50
var amount3 = 0
#code for spawning the syrup things on the screen.
var syr = amount2 + 1

var check = 1
var permy = 300
var permx = 0
var permposition = Vector2(permy,permx)
func syrupspawn():
	
	for number in range(0,syr):
		var syrupref = preload("res://syrupref.tscn")
		print(number)
		var syrup = syrupref.instantiate()
		if permx >= 500:
			permx = randi_range(25,50)
			permy += randi_range(35,45)
		elif permx >= 0 and permx <=500:
			permx += 80
		elif permx <= 0:
			permx = 200
		print(number)
		add_child(syrup)
		syrup.position = Vector2(permx, permy)

	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if check == 1:
		syrupspawn()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://shopm.tscn')
	check = 0
	print(check)
