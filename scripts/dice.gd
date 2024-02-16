extends RigidBody3D

@export
var xAxisRange = Vector2(5,5)
@export
var yAxisRange = Vector2(5,5)
@export
var zAxisRange = Vector2(5,5)
@export
var diceThrowDirectionImpulseRange = Vector2(5,5)

func _ready():
	randomize()
	var diceRandomDirection = Vector3(randf_range(xAxisRange.x, xAxisRange.y), randf_range(yAxisRange.x, yAxisRange.y), randf_range(zAxisRange.x, zAxisRange.y))
	var diceRotationalImpulse = Vector3(randf_range(diceThrowDirectionImpulseRange.x, diceThrowDirectionImpulseRange.y), randf_range(diceThrowDirectionImpulseRange.x, diceThrowDirectionImpulseRange.y),  0)
	
	apply_central_impulse(diceRandomDirection)
	apply_impulse(diceRotationalImpulse,diceRandomDirection)
