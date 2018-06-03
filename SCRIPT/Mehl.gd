extends Node2D

export var amount = 1

#Adding 1 Flour
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.mehl += amount
		print("Mehl: ", body.mehl)
		queue_free()
	print(body.get_name())
