extends CharacterBody2D

var velocidade_pulo = -350
func _physics_process(delta: float) -> void:
	velocity += get_gravity()*delta
	
	if is_on_floor():
		$Imagem.play('Andar')
		if Input.is_action_pressed('ui_select'):
			velocity.y = velocidade_pulo
	else:
		$Imagem.play('Pular')
	move_and_slide()
