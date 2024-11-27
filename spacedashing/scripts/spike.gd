extends Area2D

func _ready() -> void:
	randomize()

func _physics_process(delta: float) -> void:
	position.x -= delta * 100

func _on_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()


func _on_area_entered(area: Area2D) -> void:
	position.x = 328
	position.y = randf_range(-28, 0) 
