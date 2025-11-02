extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$"小猫模块".position = Vector2(105, 96)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_cat_go_back():
	$"小猫模块".position = Vector2(105, 96)
	

func _on_cat_game_over():
	$"游戏结束提示牌".show()
	get_tree().paused = true  # 设置住场景树的状态为暂停
