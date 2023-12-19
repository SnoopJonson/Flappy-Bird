extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -315.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var dead = false


func _ready():
	velocity.x = 100
 

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	if is_on_floor():
		die()
		velocity.x = 0
		pass
	
	
	if Input.is_action_just_pressed("ui_accept"):
		if dead:
			pass
		else:
			velocity.y = JUMP_VELOCITY
			var tween1 = get_tree().create_tween()
			tween1.tween_property(self, "rotation_degrees", -25, .1)
			
			
			
	if velocity.y >= 0 and dead == false:
		var tween2 = get_tree().create_tween()
		tween2.tween_property(self, "rotation_degrees", 25, .1)
		
		
	move_and_slide()
	

func die():
	if dead == false:
		dead = true
		get_node("Camera2D").limit_left = (position.x - 270)
		velocity.x = -50
		var tween3 = get_tree().create_tween()
		tween3.tween_property(self, "rotation_degrees", -210, .1)
		get_node("../GoofyAhhBeat").playing = false
		get_node("MetalPipe").playing = true
		get_node("Horou").playing = true
		get_node("..").tryAgain()
		
	

