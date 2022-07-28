# Android Joystick Control

---

##  About
this is a convinence scene that contains functions to get joystick/controler like
behavior on the android export of godot

---

## Usage
simply copy the folders into your godot directory and instance the scene


---

## Class And Function Specification

### AndroidJoyControl
this class is the main entry point for the tool
simply instance the scene that this is in and it should contain
all of the basic functions that are needed to emulate joystick motion
on android

- get\_left\_vector()-\>Vector2
	> returns the direction of the left "joy stick"
 	> as a vector with components ranging from 0 to 1
- get\_right\_vector()-\>Vector2
	> returns the direction of the right "joy stick"
 	> as a vector with components ranging from 0 to 1

### JoyCircle

- get\_vector()-\>Vector2
	> returns a vector indicating the direction
	> of the angle of this joy circle.
	> the compenents of this vector range from 0 to 1
- set\_angle\_to\_screen\_point(screen\_cord : Vector2)-\>void:
	> sets the angle of this JoyCircle to point to the
	> given point in screen space
- angle
	> the display angle of the joyCircle, in radians,
	> you must use setter and getters on this if you
	> want the angle display to be reflected in the shaders


---

## Additional Notes


### Shader Paramaters

The shader used to generate the joyCircles
has a series of paramaters that you might want to configure
for your project

- radius\_percent : float
	> how large the radius is relative to the parent container
- radius\_thickness : float
	> how thick the radius is, in other words how thick is the "pen"
	> that we use to draw the circle
- color : Vector4
	> the line color used to draw the circle
- focus\_color : Vector4
	> the color used to draw the indicator on the circle
	> that displays out to the user where the control is aiming
	> twoards
- focus\_angle : float
	> the actual angle that we are targeting twoards,
	> this is set in the setter getter for angle in the
	> JoyCircle class
- focus\_thickness : float
	> how many radians should the focus indicator take up, more focus\_thickness
	> indicates a wider focus indicator
