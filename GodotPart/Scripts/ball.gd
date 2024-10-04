extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direction_x : int = 1
var direction_y : int = 1

@onready var ray_left : RayCast2D = get_node("left")
@onready var ray_right : RayCast2D = get_node("right")
@onready var ray_up : RayCast2D = get_node("up")
@onready var ray_down : RayCast2D = get_node("down")

func _physics_process(delta: float) -> void:
	
	
	velocity.x = direction_x*-100
	velocity.y = direction_y*0

	move_and_slide()

func _process(delta: float) -> void:
	if ray_left.is_colliding():
		direction_x = -direction_x
	
	if ray_up.is_colliding() :
		direction_y = -direction_y
	elif ray_down.is_colliding() :
		direction_y = -direction_y
