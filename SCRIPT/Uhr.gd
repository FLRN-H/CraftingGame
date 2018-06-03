extends Node

var zeit = 0
var sek = 0


func _process(delta):
	zeit += 1
	if zeit >= 60:
		sek += 1
		zeit = 0
		print(sek)
