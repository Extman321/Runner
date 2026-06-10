extends Area2D
@export var velocidade: int
func _ready() -> void:
	velocidade = 400
func _process(delta: float) -> void:
	$ImagemObstaculo.position.x -= velocidade*delta*1
	$ImagemObstaculo.position.x -= velocidade*delta*1
	if $ImagemObstaculo.position.x < -1152:
		$ImagemObstaculo.position.x = 1152
