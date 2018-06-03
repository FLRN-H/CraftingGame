extends Node2D

export var amount = 1

#Adding 1 Bread
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.brot += amount
		print("Brot: ",  body.brot)
		queue_free()
	print(body.get_name())
