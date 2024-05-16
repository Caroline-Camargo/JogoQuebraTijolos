extends CharacterBody2D

var direction = Vector2.ZERO
const SPEED = 300.0

func _ready():
	direction.y = 1
	direction.x = [1,-1].pick_random()


func _physics_process(_delta):
	if direction:
		velocity = direction * SPEED

	move_and_slide()
