extends Node

export(PackedScene) var trunk_scene

onready var first_trunk_position = $firstTrunkPosition

func _ready():
	_spawn_first_trunks()
	
func _spawn_first_trunks():
	var new_trunk = trunk_scene.instance()
	add_child(new_trunk)
	new_trunk.position = first_trunk_position.position