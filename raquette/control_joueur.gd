extends Node

@export var vitesse = 400;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var parent = get_parent();
	var size = get_viewport().size;
	print(parent)
	
	if Input.is_action_pressed("p1_left") && parent.position.x > -size[0]/2:
		parent.position.x -= vitesse * delta;
	if Input.is_action_pressed("p1_right") && parent.position.x < size[0]/2:
		parent.position.x += vitesse * delta;
