extends Node2D

export var amount_of_eimer = 1
export var amount = 1

onready var area = get_node("Area2D")

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if body.eimer >= amount_of_eimer:
					body.eimer -= amount_of_eimer
					body.milch += amount
					print("Eimer: ", body.eimer)
					print("Milch: ",body.milch)
				else: print("not enough Eimer")