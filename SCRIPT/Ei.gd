extends Node2D

export var amount = 1

#Adding 1 Egg
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.eier += amount
		print("Eier: ",  body.eier)
		queue_free()
	print(body.get_name())
