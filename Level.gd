extends Node2D


var playerscore = 0
var enemyscore = 0

func _ready():
	_restart_game()

func _process(delta):
	$Results_player.text = str(playerscore)
	$Results_enemy.text = str(enemyscore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960,540)
	#$Ball.reset_ball()
	$Restartimer.start()


func _on_arcoplayer_body_entered(body):
	if body is Ball:
		enemyscore += 1
		_restart_game()


func _on_arcoplayer2_body_entered(body):
	if body is Ball:
		playerscore += 1
		_restart_game()
