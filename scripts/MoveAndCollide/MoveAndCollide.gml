///@arg xSpeed
///@arg ySpeed
var xSpeed = argument0;
var ySpeed = argument1;

if (!place_meeting(x + xSpeed, y, objBlock)) {
	x += xSpeed;
} else {
	xSpd = 0.1;	
}

if (!place_meeting(x, y + ySpeed, objBlock)) {
	y += ySpeed;
}