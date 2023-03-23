extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var poli = $Path2D.curve.get_baked_points()
	$StaticBody2D/CollisionPolygon2D.polygon = poli
	$Polygon2D.polygon = poli
	$Line2D.points = poli
