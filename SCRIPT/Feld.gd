extends Node2D

export var feldTimer = 16
export var minFeldTimer = 16
export var maxAddFeldTimer = 10

var scene = load("res://MAPS/Weizen.tscn")
var weizenScene
onready var timer = get_node("timer")

func _ready():
	randomize()
	feldTimer = randi() % maxAddFeldTimer + minFeldTimer
	timer.wait_time = feldTimer
	#timer.one_shot = true
	timer.start()


func _on_timer_timeout():
	if has_node("Weizen") == false:
		#print("pass")
		weizenScene = scene.instance()
		weizenScene.set_name("Weizen")
		add_child(weizenScene)