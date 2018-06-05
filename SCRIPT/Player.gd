extends KinematicBody2D

const UP = Vector2(0, -1)
const ACCELERATION = 50
const MAX_SPEED = 200

var eier = 0
var mehl = 0
var brot = 0
var eimer = 0
var milch = 0
var kaese = 0
var kaesebrot = 0
var weizen = 0
var baumstamm = 0
var brett = 0
var stein = 0

var motion = Vector2()

func _ready():
	print("Brot: ",brot)
	print("Eier: ",eier)
	print("Mehl: ",mehl)
	print("Eimer: ",eimer)
	print("Milch: ",milch)
	print("Käse: ",kaese)
	print("Käsebrot: ",kaesebrot)
	print("Weizen: ",weizen)
	print("Baummstämme: ",baumstamm)
	print("Bretter: ",brett)

func _physics_process(delta):

	var friction = false


	# horizontal movement
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		$Sprite.flip_h = true

	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = false

	else:
		motion.x = lerp(motion.x, 0, 0.2)
		friction = true

	# vertical movement
	if Input.is_action_pressed("ui_down"):
		motion.y = min(motion.y + ACCELERATION, MAX_SPEED)

	elif Input.is_action_pressed("ui_up"):
		motion.y = max(motion.y - ACCELERATION, -MAX_SPEED)

	else:
		motion.y = lerp(motion.y, 0, 0.2)
		friction = true


	motion = move_and_slide(motion, UP)


	pass


