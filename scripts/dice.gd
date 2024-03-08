extends RigidBody3D

@export
var xAxisRange = Vector2(-100,100)
@export
var yAxisRange = Vector2(-100,100)
@export
var zAxisRange = Vector2(-100,100)
@export
var diceThrowDirectionImpulseRange = Vector2(-100,100)
@export
var offSetRange = Vector2(-500, 500)

func _ready():
	randomize()
	var diceRandomDirection = Vector3(
		randf_range(xAxisRange.x, xAxisRange.y), 
		randf_range(yAxisRange.x, yAxisRange.y),
		randf_range(zAxisRange.x, zAxisRange.y)
	)
	var diceRotationalImpulse = Vector3(
		randf_range(diceThrowDirectionImpulseRange.x, diceThrowDirectionImpulseRange.y),
		randf_range(diceThrowDirectionImpulseRange.x, diceThrowDirectionImpulseRange.y),
		randf_range(diceThrowDirectionImpulseRange.x, diceThrowDirectionImpulseRange.y),
	)
	var offSetDirection = Vector3(
		randf_range(offSetRange.x, offSetRange.y),
		randf_range(offSetRange.x, offSetRange.y),
		randf_range(offSetRange.x, offSetRange.y),
	)
	
	apply_central_impulse(diceRandomDirection)
	apply_force(diceRotationalImpulse, offSetDirection)

