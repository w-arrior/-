extends Node2D
var speed = 10
signal goBack
signal gameOver
# signal test
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("move_up"):
		position.y -= speed
	elif Input.is_action_pressed("move_down"):
		position.y += speed
	elif Input.is_action_pressed("move_left"):
		$AnimatedSprite2D.flip_h = true
		position.x -= speed
	elif  Input.is_action_pressed("move_right"):
		$AnimatedSprite2D.flip_h = false
		position.x += speed
	else:
		pass

func _on_cat_area_entered(area):
	if area.name == "AreaKey":
		gameOver.emit()
	elif area.name == "AreaStick" or area.name == "AreaWall":
		goBack.emit()
