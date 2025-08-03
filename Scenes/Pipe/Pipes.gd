extends Node2D


var newPipe = preload("pipe.tscn")
var delPipe = null
var nextDeletePipe = null


func spawnPipe(xDirection):
	var tempPipe = newPipe.instantiate()
	tempPipe.position = Vector2(xDirection + 700 , randf_range(175,825))
	call_deferred("add_child", tempPipe)

func deletePipe():
	if delPipe == null:
		pass
	else:
		delPipe.queue_free()
		delPipe = nextDeletePipe
