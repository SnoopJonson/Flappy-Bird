extends StaticBody2D



func _on_spawn_plat_body_entered(body):
	if body.name == "PlayerCharacter" and body.velocity.x >= 0:
		get_node("..").spawnPlatform(self.position[0],self.position[1])
		get_node("..").delTile()
		get_node("..").upNextTile = self
