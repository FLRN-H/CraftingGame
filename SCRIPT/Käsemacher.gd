extends Node2D

export var amount_of_milch = 2
export var amount_of_eimer = 2
export var amount = 1

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


	print(body.get_name())
