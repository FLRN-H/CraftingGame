extends Node2D

export var amount_of_eggs = 2
export var amount_of_flour = 1
export var amount = 1

export var brotTimer = 10

var scene = load("res://MAPS/Brot.tscn")
var brotScene
onready var timer = get_node("Timer")

func _ready():
	timer.wait_time = brotTimer
	timer.one_shot = true
	print(timer.time_left)



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		print(body.get_name())
		if body.mehl >= amount_of_flour:
			if body.eier >= amount_of_eggs:
				if has_node("Brot") == false:
					print("Take the Brot")
					if timer.is_stopped() == true:
						body.mehl -= amount_of_flour
						body.eier -= amount_of_eggs
						print("Brot: ",body.brot)
						print("Mehl: ",body.mehl)
						print("Eier: ",body.eier)
						timer.start()


func _on_Timer_timeout():
	if has_node("Brot") == false:
		print("pass")
		brotScene = scene.instance()
		brotScene.set_name("Brot")
		brotScene.position = Vector2(-50,0)
		add_child(brotScene)