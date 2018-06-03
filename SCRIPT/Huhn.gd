extends Node2D

export var eiTimer = 5

var scene = load("res://MAPS/Ei.tscn")
var eiScene
onready var timer = get_node("timer")
#var zeit = 0

func _ready():
	
	timer.wait_time = eiTimer
	#timer.one_shot = true
	timer.start()

#func _process(delta):
#	zeit += 1
#	print(zeit)

func _on_Timer_timeout():
	if has_node("Ei") == false:
		eiScene = scene.instance()
		eiScene.set_name("Ei")
		eiScene.position = Vector2(30,10)
		add_child(eiScene)
