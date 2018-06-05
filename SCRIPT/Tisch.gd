extends Node2D

export var amount_of_kaese = 1
export var amount_of_brot = 1
export var amount = 1

onready var area = get_node("Area2D")

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			#print(body.name)
			if Input.is_action_just_pressed("ui_select"):
				print("lol")
				if body.kaese >= amount_of_kaese:
					if body.brot >= amount_of_brot:
						body.kaese -= amount_of_kaese
						body.brot -= amount_of_brot
						body.kaesebrot += amount
						print("Käse ", body.kaese)
						print("Brot: ",body.brot)
						print("Käsebrot: ",body.kaesebrot)
					else: print("not enough Brot")
				else: print("not enough Käse")