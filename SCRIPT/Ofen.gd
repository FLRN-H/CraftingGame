extends Node2D

export var amount_of_eggs = 2
export var amount_of_flour = 1
export var amount = 1


func _on_Area2D_body_entered(body):

	#Baking Bread if you have 2 Eggs and 1 Flour
	if body.get_name() == "Player":
		if body.eier >= amount_of_eggs:
			if body.mehl >= amount_of_flour:
				body.eier -= amount_of_eggs
				body.mehl -= amount_of_flour
				body.brot += amount
				print("Brot: ", body.brot)
				print("Eier: ",body.eier)
				print("Mehl: ",body.mehl)


	print(body.get_name())
