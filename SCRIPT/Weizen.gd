extends Node2D

export var amount = 5


#Get 5 Wheet
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.weizen += amount
		print("Weizen: ",  body.weizen)
		queue_free()
	print(body.get_name())