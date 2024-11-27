extends Line2D
@export var TrailLength = 13

func _physics_process(delta: float) -> void:
	add_point(global_position)
	while get_point_count() > TrailLength:
		remove_point(0)
