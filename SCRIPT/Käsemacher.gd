extends Node2D

export var amount_of_milch = 2
export var amount_of_eimer = 2
export var amount = 1

onready var area = get_node("Area2D")

func _on_Area2D_body_entered(body):

	#Making 1 Cheese from 2 Milk and get back the Buckets
	if body.get_name() == "Player":
		if body.milch >= amount_of_milch:
				body.milch -= amount_of_milch
				body.eimer += amount_of_eimer
				body.kaese += amount
				print("Milch ", body.milch)
				print("Eimer: ",body.eimer)
				print("Käse: ",body.kaese)

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if body.milch >= amount_of_milch:
					body.milch -= amount_of_milch
					body.eimer += amount_of_eimer
					body.kaese += amount
					print("Milch ", body.milch)
					print("Eimer: ",body.eimer)
					print("Käse: ",body.kaese)
				else: print("not enough Milch")
