# Structure to store the basic character movement context

class_name BasicCharacterMovementData extends Node

var state : BasicCharacterMovementComponent.MOVEMENT_STATE = BasicCharacterMovementComponent.MOVEMENT_STATE.IDLE
var changeDirection : BasicCharacterMovementComponent.CHANGEDIRECTION_MODE = BasicCharacterMovementComponent.CHANGEDIRECTION_MODE.FIFTY
var isRuning : bool = false
var isMoving : bool = false
var isPushing : bool = false
var isJumping : bool = false
var JumpKeyPressed : bool = false
var isFalling : bool = false
var isDoingRotation : bool = false
var inputDir : Vector2 = Vector2.ZERO
var prevDirection : Vector3 = Vector3.ZERO
var direction : Vector3 = Vector3.ZERO
