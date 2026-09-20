extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	linear_velocity = Vector2(randi() % 100 -50, 400)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
