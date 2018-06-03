extends Node2D

export var amount = 1


#Get 1 Bucket
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.eimer += amount
		print("Eimer: ",  body.eimer)
		queue_free()
	print(body.get_name())
