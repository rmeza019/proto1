///@arg xSpeed
///@arg ySpeed
var xSpeed = argument0 * xDir;
var ySpeed = argument1 * yDir;

if (place_meeting(x + xSpeed, y, objBlock)) {
	while (!place_meeting(x + sign(xSpeed), y, objBlock)) {
		x += sign(xSpeed);
	}
	xSpeed = 0;
	xSpd = 0.1;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, objBlock)) {
	while (!place_meeting(x, y + sign(ySpeed), objBlock)) {
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

y += ySpeed;
