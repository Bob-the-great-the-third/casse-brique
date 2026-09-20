extends Node

@export var vitesse = 400
var collision_shape: CollisionShape2D
var demi_largeur: float
var wall_width = 5;

func _ready() -> void:
	collision_shape = get_parent().get_node("CollisionShape2D")
	demi_largeur = collision_shape.shape.size.x / 2
	print("demi_largeur: ", demi_largeur)

func _physics_process(delta: float) -> void:
	var parent = get_parent()
	var size = get_viewport().get_visible_rect().size

	var deplacement = 0.0
	if Input.is_action_pressed("p1_left"):
		deplacement -= vitesse * delta
	if Input.is_action_pressed("p1_right"):
		deplacement += vitesse * delta

	parent.position.x += deplacement
	parent.position.x = clamp(parent.position.x, demi_largeur + wall_width, size.x - demi_largeur - wall_width)
	print("pos: ", parent.position.x, " size: ", size.x, " min: ", demi_largeur, " max: ", size.x - demi_largeur)
	
