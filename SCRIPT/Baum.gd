extends Node2D

var gefaellt = false

export var wachsZeit = 20
export var wachsZeitMin = 20
export var wachsZeitAdd  = 20
export var amount = 2

onready var area = get_node("Area2D")
onready var timer = get_node("Timer")
onready var stumpf = get_node("Sprite2")
onready var baumBild = get_node("Sprite")



func _ready():
	randomize()
	timer.one_shot = true

func _physics_process(delta):
	var bodies = area.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			if Input.is_action_just_pressed("ui_accept"):
				print("lol")
				if gefaellt == false:
					body.baumstamm += amount
					print("Baumstämme: ",body.baumstamm)
					stumpf.show()
					baumBild.hide()
					gefaellt = true
					wachsZeit = randi() % wachsZeitAdd + wachsZeitMin
					timer.wait_time = wachsZeit
					timer.start()

func _on_Timer_timeout():
	stumpf.hide()
	baumBild.show()
	gefaellt = false
