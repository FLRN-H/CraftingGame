extends Node2D

export var amount_of_kaese = 1
export var amount_of_brot = 1
export var amount = 1

func _on_Area2D_body_entered(body):

	#Making 1 Cheese from 2 Milk and get back the Buckets
	if body.get_name() == "Player":
		if body.kaese >= amount_of_kaese:
			if body.brot >= amount_of_brot:
				body.kaese -= amount_of_kaese
				body.brot -= amount_of_brot
				body.kaesebrot += amount
				print("Käse ", body.kaese)
				print("Brot: ",body.brot)
				print("Käsebrot: ",body.kaesebrot)


	print(body.get_name())
