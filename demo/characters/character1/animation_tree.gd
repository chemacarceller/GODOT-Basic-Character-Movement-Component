extends AnimationTree

func _process(delta: float) -> void:
	var isWalking = $"../BasicCharacterMovement".get_isMoving() and not $"../BasicCharacterMovement".get_isRuning() and not $"../BasicCharacterMovement".get_isFalling()
	var isRuning = $"../BasicCharacterMovement".get_isMoving() and $"../BasicCharacterMovement".get_isRuning() and not $"../BasicCharacterMovement".get_isFalling()
	var isIdle = not $"../BasicCharacterMovement".get_isMoving() and not $"../BasicCharacterMovement".get_isFalling()
	var isJumping = $"../BasicCharacterMovement".get_isJumping() and not $"../BasicCharacterMovement".get_isFalling()
	var isFalling = $"../BasicCharacterMovement".get_isFalling() and not $"../BasicCharacterMovement".get_isJumping()


	if get("parameters/conditions/isIdle") != isIdle :
		set("parameters/conditions/isIdle",  isIdle)
	if get("parameters/conditions/isWalking") != isWalking :
		set("parameters/conditions/isWalking",  isWalking)
	if get("parameters/conditions/isRuning") != isRuning :
		set("parameters/conditions/isRuning",  isRuning)
	if get("parameters/conditions/isJumping") != isJumping :
		set("parameters/conditions/isJumping",  isJumping)
	if get("parameters/conditions/isFalling") != isFalling :
		set("parameters/conditions/isFalling",  isFalling)
