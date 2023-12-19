extends Node2D

var newPlat = preload("res://floor_tile.tscn")
var deleteTile = null
@onready var upNextTile = get_node("FloorTile")
func spawnPlatform(xPos, yPos):
	var platTemp = newPlat.instantiate()
	platTemp.position = Vector2(xPos + 540, yPos)
	call_deferred("add_child",platTemp)
	
func delTile():
	if deleteTile == null:
		
		pass
	else:
		deleteTile.queue_free()
	deleteTile = upNextTile	 
