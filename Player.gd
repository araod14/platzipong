extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var speed = 400

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.y -=1
	if Input.is_action_pressed("ui_down"):
		direction.y +=1
		
	move_and_slide(direction * speed)
	
