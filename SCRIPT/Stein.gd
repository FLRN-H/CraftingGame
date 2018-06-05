extends Node2D

export var amount = 1

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.stein += amount
		print("Steine: ",body.stein)
		queue_free()
