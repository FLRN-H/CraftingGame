extends Node2D

export var mehlTimer = 5
export var weizenAmount = 20

var scene = load("res://MAPS/Mehl.tscn")
var mehlScene
onready var timer = get_node("Timer")
onready var area = get_node("Area2D")

func _ready():
	timer.wait_time = mehlTimer
	timer.one_shot = true
	print(timer.time_left)

func _on_Timer_timeout():
	if has_node("Mehl") == false:
		print("pass")
		mehlScene = scene.instance()
		mehlScene.set_name("Mehl")
		mehlScene.position = Vector2(-50,0)
		add_child(mehlScene)

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if timer.is_stopped() == true:
					if has_node("Mehl") == false:
						if body.weizen >= weizenAmount:
							body.weizen -= 20
							print("Weizen: ",body.weizen)
							timer.start()
						else: print("Not enough Weizen")
					else: print("Take the Mehl")
				else: print("Is schon am mahlen")
