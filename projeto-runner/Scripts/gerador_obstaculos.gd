extends Node2D

@export var cena_bloco = preload("res://Cenas/obstaculo.tscn")

var posicoes = [
	[0, 595], [700, 595], [1400, 595], [2100, 595], [2800, 595], [0, 595], [0, 595] ]
	
func _ready() -> void:
	for posicao in posicoes:
		var bloco = cena_bloco.instantiate();
		add_child(bloco);
		bloco.position.x = posicao[0]
		bloco.position.y = posicao[1]
		
