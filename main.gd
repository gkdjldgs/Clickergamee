extends Node2D
#many important global variables
var money = 999999
var multi = 1
var amount1 = 0
var limit1 = 2
var amount2 = 0
var limit2 = 50
var amount3 = 0
var limit3 = 250
var huh = true
#code for spawning the syrup things on the screen.
var syr = amount2
var ball = 1
var check = 1
var permy = 300
var permx = 0
var permposition = Vector2(permy,permx)
func syrupspawn():
	var syrupref = preload("res://syrupref.tscn")
	var syrup = syrupref.instantiate()
	if permx >= 500:
		permx = randi_range(25,50)
		permy += randi_range(35,45)
	elif permx >= 0 and permx <=500:
		permx += 80
	elif permx <= 0:
		permx = 200
	add_child(syrup)
	syrup.position = Vector2(permx, permy)

	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://shopm.tscn')
	check = 0
	print(check)




func _on_timer_2_timeout() -> void:
	if huh == true:
		var coyote = randi_range(5,25)
		await get_tree().create_timer(coyote).timeout
		var type = randi_range(1,6)
		var temposx = randi_range(50,600)
		var temposy = 200
		var leaf1 = preload("res://addleaf.tscn")
		var leaf2 = preload('res://remove.tscn')
		var leaf3 = preload('res://multiply.tscn')
		var leaf4 = preload('res://divide.tscn')
		if type == 1 or type == 2:
			var Leaf1 = leaf1.instantiate()
			add_child(Leaf1)
			Leaf1.position = Vector2(temposx,temposy)
		elif type == 3 or type == 4:
			var Leaf2 = leaf2.instantiate()
			add_child(Leaf2)
			Leaf2.position = Vector2(temposx,temposy)
		elif type == 5:
			var Leaf3 = leaf3.instantiate()
			add_child(Leaf3)
			Leaf3.position = Vector2(temposx,temposy)
		elif type == 6:
			var Leaf4 = leaf4.instantiate()
			add_child(Leaf4)
			Leaf4.position = Vector2(temposx,temposy)
	else:
		pass
