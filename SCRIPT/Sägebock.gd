extends Node2D

onready var area = get_node("Area2D")

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			if Input.is_action_just_pressed("ui_accept"):
				if body.baumstamm >= 1:
					body.brett += 2
					body.baumstamm -= 1
					print("Bretter: ",body.brett)
					print("Baumstämme: ",body.baumstamm)