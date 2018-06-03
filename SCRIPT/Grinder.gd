extends Node2D

export var mehlTimer = 5
export var weizenAmount = 20

var scene = load("res://MAPS/Mehl.tscn")
var mehlScene
onready var timer = get_node("Timer")

func _ready():
	timer.wait_time = mehlTimer
	timer.one_shot = true
	print(timer.time_left)



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		print(body.get_name())
		if body.weizen >= weizenAmount:
			if has_node("Mehl") == false:
				print("Take the Mehl")
				if timer.is_stopped() == true:
					body.weizen -= 20
					print("Weizen: ",body.weizen)
					timer.start()


func _on_Timer_timeout():
	if has_node("Mehl") == false:
		print("pass")
		mehlScene = scene.instance()
		mehlScene.set_name("Mehl")
		mehlScene.position = Vector2(-50,0)
		add_child(mehlScene)
