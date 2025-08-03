extends Node2D


func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/GameArena/world.tscn")


func _on_easter_egg_pressed():
	get_node("Croissant").paused = false  
	get_node("MainMenuMusic").stream_paused = true
	get_node("EasterEgg").queue_free()
