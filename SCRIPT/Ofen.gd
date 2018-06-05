extends Node2D

export var amount_of_eggs = 2
export var amount_of_flour = 1
export var amount = 1

export var brotTimer = 10

var scene = load("res://MAPS/Brot.tscn")
var brotScene
onready var timer = get_node("Timer")
onready var area = get_node("Area2D")

func _ready():
	timer.wait_time = brotTimer
	timer.one_shot = true
	#print(timer.time_left)



func _on_Timer_timeout():
	if has_node("Brot") == false:
		print("pass")
		brotScene = scene.instance()
		brotScene.set_name("Brot")
		brotScene.position = Vector2(-50,0)
		add_child(brotScene)
		
func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if timer.is_stopped() == true:
					if has_node("Brot") == false:
						if body.mehl >= amount_of_flour:
							if body.eier >= amount_of_eggs:
								body.mehl -= amount_of_flour
								body.eier -= amount_of_eggs
								print("Brot: ",body.brot)
								print("Mehl: ",body.mehl)
								print("Eier: ",body.eier)
								timer.start()
					else: print("Take the Brot")
				else: print("Is schon am backen")