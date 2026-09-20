extends Node2D

var briques_restantes = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var briques = get_tree().get_nodes_in_group("brick")
	briques_restantes = briques.size()
	print("Nombre de briques trouvées : ", briques_restantes)
	for b in briques:
		b.brique_detruite.connect(_on_brique_detruite)

func _on_brique_detruite() -> void:
	print("triggered -> ", briques_restantes)
	briques_restantes -= 1
	if briques_restantes <= 0:
		get_tree().change_scene_to_file("res://victoire.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
