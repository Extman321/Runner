extends Node2D

@export var cena_bloco = preload("res://Cenas/obstaculo.tscn")

var timer = 0

func _process(delta) -> void:
	timer += delta
	if timer > 2:
		timer = 0
		var bloco = cena_bloco.instantiate()
		add_child(bloco)
		bloco.position.x = 1000
		bloco.position.y = 595
