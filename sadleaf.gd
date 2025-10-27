extends Node2D

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y -= - 5

func _on_button_pressed() -> void:
	pass



func _on_rigid_body_2d_child_entered_tree(node: Node) -> void:
	pass


func _on_timer_timeout() -> void:
	self.queue_free()
