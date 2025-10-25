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
@onready var syrupref = preload("res://syrupref.tscn")
var permposition = Vector2(0,0)
func syrupspawn():
	var permposition = Vector2(permposition.x,permposition.y)
	permposition.y = 0
	permposition.x = 0
	var syrup = syrupref.instantiate()
	for number in range(amount2):
		if permposition.x < 0:
			permposition.x = 70
		elif permposition.x >= 70 and permposition.x <=630:
			permposition.x += 70
		elif permposition.x >= 630:
			permposition.x = 0
			permposition.y -= 100
		syrup.global_position = Vector2(permposition.x, permposition.y)
		add_child(syrup)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	syrupspawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://shopm.tscn')
