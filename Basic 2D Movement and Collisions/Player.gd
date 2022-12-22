extends KinematicBody2D #Allows functions from KinematicBody2D to be used along with its parents' functions

export (int) var speed #export - allows this variable to be edited in the inspector, (int) - states that this variable is an integer and will only allow the given value to be an integer #Vector2s store an x and y value, in this case, the left and right velocity (x) and the upward and downward velocity (y)

func _physics_process(delta): #Called every frame
	if Input.is_action_pressed("ui_right"): #True every frame while the chosen input (right arrow key) is pressed
		Velocity.x = speed
	elif Input.is_action_pressed("ui_left"): #if the original if statement (line 7) and the elif statement (this line) are both false, the code in the else statement (line 11) will run
		Velocity.x = -speed
	else:
		Velocity.x = Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		Velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		Velocity.y = -speed
	else:
		Velocity.y = Vector2.ZERO
		move_and_slide() #Basically adds the given vector2 (Velocity) to position, but takes into account collision shapes
