extends Node2D
var speed = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.scale = Vector2(speed, speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Sprite2D.scale += Vector2(speed, speed)
	if $Sprite2D.scale.x >= 1.0:
		speed *= -1
	elif $Sprite2D.scale.x <= 0.0:
		speed *= -1


func _on_key_area_entered(_area):
	queue_free()
