/// @description 
onGround = CheckBelow();

if (onGround || place_meeting(x, y - 1, objBlock)) {
	ySpd = 0;
}

if (ySpd < 15) {
	ySpd += grav;
}
