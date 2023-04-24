extends KinematicBody2D
class_name Ball


var speed = 0
var direction = Vector2.ZERO
var is_moving = false
onready var timer = get_parent().find_node("Restartimer")

func _ready():
	randomize()
	reset_ball()
	
	speed = 600
	direction.x = [-1, 1][randi()%2]
	direction.y = [-0.7, 0.7][randi()%2]
	is_moving = true

func reset_ball():
	randomize()
	timer.stop()
	speed = 600
	direction.x = [-1, 1][randi()%2]
	direction.y = [-0.7, 0.7][randi()%2]
	is_moving = true
	

func _physics_process(delta):
	if is_moving:
		var collide = move_and_collide(direction * speed * delta)
		
		if collide:
			$Audiocollision.play()
			direction = direction.bounce(collide.normal)


func _on_Restartimer_timeout():
	reset_ball()

