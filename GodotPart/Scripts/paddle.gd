extends AnimatableBody2D

@export var speed : int = 500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_pressed("Upward") and position.y >0 :
		position.y -= speed*delta 
	elif Input.is_action_pressed("Downward") and position.y < 648:
		position.y += speed*delta
