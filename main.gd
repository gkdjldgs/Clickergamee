extends Node2D
#many important global variables
var money = 0
var multi = 1
var amount1 = 0
var limit1 = 2
var amount2 = 0
var limit2 = 50
var amount3 = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for number in range(amount2):
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://shopm.tscn')
