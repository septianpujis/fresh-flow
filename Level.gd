extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var poliBottom = $Bottom/Path2D.curve.get_baked_points()
	$Bottom/StaticBody2D/CollisionPolygon2D.polygon = poliBottom
	$Bottom/Polygon2D.polygon = poliBottom
	$Bottom/Line2D.points = poliBottom
	
	var poliTop = $Top/Path2D.curve.get_baked_points()
	$Top/StaticBody2D/CollisionPolygon2D.polygon = poliTop
	$Top/Polygon2D.polygon = poliTop
	$Top/Line2D.points = poliTop
