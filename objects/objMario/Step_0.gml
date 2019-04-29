/// @description 
event_inherited();

//for testing only
move_wrap(true, false, 1);

if (input.left) {
	newXDir = -1;
} else if (input.right){
	newXDir = 1;
}

switch (state) {
	case states.idle:
		#region Idle State
		sprite = sprSmolMarioIdle;
		prevState = states.idle;
		
		xSpd = 0;
		
		if (input.left && input.right) {
			state = states.idle;
		} else if (input.left || input.right) {
			state = states.walk;
		} else if (input.left || input.right && input.run) {
			state = states.run;
		}
		
		if (onGround && input.jump) {
			state = states.jump;
			ySpd += jumpSpd;
		}
		
		xDir = newXDir;
		break;
		#endregion
	
	case states.walk:
		#region Walk State
		sprite = sprSmolMarioWalk;
		prevState = states.walk;
		
		if (newXDir != xDir && xSpd > walkSkidTreshold){
			state = states.skid;
			break;
		} else if (newXDir != xDir) {
			xSpd = 0;
		}
		
		if (onGround && input.jump) {
			state = states.jump;
			ySpd += jumpSpd;
			break;
		}
		
		if (input.run) {
			state = states.run;
			break;
		}
		
		if (input.left || input.right) {
			if (xSpd < maxWalkSpd) {
				xSpd += walkAccel;
			} else {
				xSpd = maxWalkSpd;
			}
		} else if (!input.left && !input.right) {
			if (xSpd > 0) {
				xSpd -= walkAccel;
			}
		}
		
		if (xSpd <= 0) {
			state = states.idle;
		}
		
		xDir = newXDir;
		break;
		#endregion
	
	case states.run:
		#region Run State
		sprite = sprSmolMarioWalk;
		prevState = states.run;
		
		if(!input.run){
			state = states.walk;
			break;
		}
		
		if (newXDir != xDir && xSpd > walkSkidTreshold){
			state = states.skid;
			break;
		} else if (newXDir != xDir) {
			xSpd = 0;
		}
		
		if (onGround && input.jump) {
			state = states.jump;
			ySpd += jumpSpd;
			break;
		}
		
		if (input.left || input.right && input.run) {
			if (xSpd < maxRunSpd) {
				xSpd += runAccel;
			} else {
				xSpd = maxRunSpd;
			}
		} else if (!input.left && !input.right) {
			if (xSpd > 0) {
				xSpd -= runAccel;
			}
		}
		
		if (xSpd <= 0) {
			state = states.idle;
		}
		
		xDir = newXDir;
		break;
		#endregion
			
	case states.jump:
		#region Jump State
		sprite = sprSmolMarioJump;
		prevState = states.jump;
		
		if (ySpd < 0 && !input.jumpHeld) {
			ySpd /= 2;
		}
		
		if (!onGround) {
			if (newXDir == xDir) {
				if (input.left || input.right) {
					if (xSpd < maxWalkSpd) {
						xSpd += walkAccel * 3;
					} else {
						xSpd = maxWalkSpd;
					}
				} else if (!input.left && !input.right) {
					if (xSpd > 0) {
						xSpd += -walkAccel;
					}
				}
			} else {
				if (input.left || input.right) {
					if (xSpd > 0) {
						xSpd += -walkAccel;
					} else {
						xSpd = 0;
					}					
				}
			}
		} else {
			if (xSpd <= 0) {
				state = states.idle;
			} else if (xSpd > maxWalkSpd){
				state = states.run;
			} else if (xSpd <= maxWalkSpd) {
				state = states.walk;
			}		
		}
		
		break;
		#endregion
	
	case states.skid:
		#region Skid State
		sprite = sprSmolMarioSkid;
		prevState = states.skid;
		image_xscale = newXDir;
		
		if (xSpd > 0) {
			xSpd += -walkAccel * 1.2;
		}
		
		if (xSpd <= 0) {
			xSpd = 0;		
			state = states.idle;
			xDir = newXDir;
		}
		
		break;
		#endregion
	
	case states.duck:
		#region Duck State
		prevState = states.duck;
		break;
		#endregion
}
