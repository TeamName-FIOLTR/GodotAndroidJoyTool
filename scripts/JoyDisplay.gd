extends ColorRect

class_name JoyCircle

#the angle that we use to set the shader display
var angle : float setget set_angle, get_angle
func set_angle(val : float) ->void:
	material.set_shader_param("focus_angle",val)
func get_angle()->float:
	return material.get_shader_param("focus_angle")

#sets our angle to point to a global point in screen space
func set_angle_to_screen_point(screen_cord : Vector2)->void:
	var target : Vector2 = get_global_transform_with_canvas().affine_inverse()*screen_cord-rect_size/2
	self.angle = -atan2(target.y,target.x)

#returns a vector corisponding to our angle
#where each cordinate ranges from 0 to 1 respectivly
func get_vector()->Vector2:
	return Vector2(cos(self.angle),-sin(self.angle))
