extends Control

class_name AndroidJoyControl
#export variables that reference the left and right  rotational
#displays respectivly
export (NodePath) var right_stick_node_path
onready var right_circle : JoyCircle = get_node(right_stick_node_path)

export (NodePath) var left_stick_node_path
onready var left_circle : JoyCircle = get_node(left_stick_node_path)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#syntactic sugar functions that return the left and right
#vectors of the left and right circles respectivly
func get_left_vector()->Vector2:
	return left_circle.get_vector()
func get_right_vector()->Vector2:
	return right_circle.get_vector()


func _input(event):
	if event is InputEventScreenTouch:
		if event.position.x > OS.get_window_size().x/2:
			right_circle.set_angle_to_screen_point(event.position)
		else:
			left_circle.set_angle_to_screen_point(event.position)

	if event is InputEventMouseMotion:
		if event.position.x > OS.get_window_size().x/2:
			right_circle.set_angle_to_screen_point(event.position)
		else:
			left_circle.set_angle_to_screen_point(event.position)
