extends Node2D

func _on_top_body_entered(body):
	body.direction.y *= -1
	pass
		
func _on_bottom_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(0.0, -95.0)
	add_child(e)
	pass 

func _on_left_body_entered(body):
	body.direction.x *= -1
	pass 

func _on_right_body_entered(body):
	body.direction.x *= -1
	pass

func _on_area_2d_body_entered(body):
	body.direction.y *= -1
	pass
	
func resetBricks(objectPositions, body):
	var parent = body.get_parent()
	body.queue_free()
	var e2 = preload("res://ball.tscn").instantiate()
	e2.global_position = Vector2(0.0, -132.0)
	e2.collision_layer = 2
	parent.add_child(e2)
	
	for tempPosition in objectPositions:
		print(tempPosition)
		var e = preload("res://brick.tscn").instantiate()
		e.global_position = tempPosition
		e.collision_mask = 2
		parent.add_child(e)
