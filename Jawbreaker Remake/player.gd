
extends KinematicBody2D



#pixels / second
const MOTION_SPEED = 250

func _fixed_process(delta):

	var motion = Vector2()
	
	if (Input.is_action_pressed("move_up")):
		motion+=Vector2(0,-1)
	if (Input.is_action_pressed("move_bottom")):
		motion+=Vector2(0,1)
	if (Input.is_action_pressed("move_left")):
		motion+=Vector2(-1,0)
	if (Input.is_action_pressed("move_right")):
		motion+=Vector2(1,0)
	
	motion = motion.normalized() * MOTION_SPEED * delta
	move(motion)
	

func _ready():
	set_fixed_process(true)
	pass


