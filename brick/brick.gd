extends StaticBody2D

@onready var area = $Area2D
signal brique_detruite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("brick")
	area.body_entered.connect(_on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_body_entered(body: Node) -> void:
	if body.is_in_group("balle"):
		brique_detruite.emit()
		queue_free()
