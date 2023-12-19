extends Node2D

var points = 0 

func _ready():
	var pipes = get_node("Pipes")
	pipes.spawnPipe(-250)
	pipes.spawnPipe(100)
	
	
func tryAgain():
	get_node("UI/PlayAgain").visible = true
	get_node("UI/Quit").visible = true
	get_node("UI/IgiveUp").visible = true


func _on_quit_pressed():
	get_tree().quit()
	

func _on_play_again_pressed():
	get_tree().reload_current_scene()
	get_node("UI/PlayAgain").visible = false
	get_node("UI/Quit").visible = false
	get_node("UI/IgiveUp").visible = false
