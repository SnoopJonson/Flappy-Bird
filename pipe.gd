extends Node2D


func _on_area_2d_body_entered(body):
	if body.name == "PlayerCharacter":
		pass
		get_node(body.get_path()).die()
		
		
func _on_point_body_entered(body):
	if body.velocity.x >= 0:
		get_node("/root/World").points += 1
		get_node("Point/PointSound").playing = true
		var vector2d = self.position
		get_node("..").spawnPipe(vector2d[0])
		get_node("..").deletePipe()
		get_node("..").delPipe = self
	
