extends Node2D

export var feldTimer = 16
export var minFeldTimer = 16
export var maxAddFeldTimer = 10

var scene = load("res://MAPS/Weizen.tscn")
var weizenScene
onready var timer = get_node("timer")
onready var area = get_node("Area2D")
onready var samen = get_node("Sprite2")


func _ready():
	randomize()
	feldTimer = randi() % maxAddFeldTimer + minFeldTimer
	timer.wait_time = feldTimer
	timer.one_shot = true
	#timer.start()


func _on_timer_timeout():
	samen.hide()
	if has_node("Weizen") == false:
		#print("pass")
		weizenScene = scene.instance()
		weizenScene.set_name("Weizen")
		weizenScene.position = Vector2(0,-10)
		add_child(weizenScene)
		feldTimer = randi() % maxAddFeldTimer + minFeldTimer
		timer.wait_time = feldTimer

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if timer.is_stopped() == true:
					if has_node("Weizen") == false:
						samen.show()
						timer.start()
					else: print("Take the Weizen")
				else: print("Is schon gesäht")