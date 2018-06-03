extends Node2D

export var amount_of_eimer = 1
export var amount = 1

func _on_Area2D_body_entered(body):

	#Milking 1 Bucket of Milk
	if body.get_name() == "Player":
		if body.eimer >= amount_of_eimer:
			body.eimer -= amount_of_eimer
			body.milch += amount
			print("Eimer: ", body.eimer)
			print("Milch: ",body.milch)


	print(body.get_name())