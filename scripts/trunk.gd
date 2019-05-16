extends Node2D

onready var sprite = $Sprite
onready var left_axe = $leftAxe
onready var right_axe = $rightAxe

var sprite_height

func _ready():
	sprite_height = sprite.texture.get_height() * scale.y
	
func initialize_trunk(axe, right):
	if axe:
		if right:
			left_axe.queue_free()
		else:
			right_axe.queue_free()
	else:
		left_axe.queue_free()
		right_axe.queue_free()