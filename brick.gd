extends Area2D
static var objectPositions := []
static var contBricks = 0
const MAXBRICKS = 23

func _on_body_entered(body):
	body.direction.y *= -1
	objectPositions.append(self.position)
	self.queue_free()
	
	contBricks = contBricks + 1
	
	if contBricks >= MAXBRICKS:
		var parent = body.get_parent()
		parent.resetBricks(objectPositions, body)
		contBricks = 0
		objectPositions = []
	pass 
