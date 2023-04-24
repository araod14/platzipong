extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 600
onready var ball= get_parent().find_node("Ball")

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var direction = Vector2(0, _get_direction())
	move_and_slide(direction * speed)

func _get_direction():
	if abs(ball.position.y - self.position.y) >25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
