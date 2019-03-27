/// @description 
//show_debug_message("State: " + string(state));
show_debug_message("xSpd: " + string(xSpd));
//show_debug_message("newXDir: " + string(newXDir));

FrameCounter();

switch (state) {
	case states.idle:
		#region Idle State
		sprite = sprSmolMarioIdle;
		
		xSpd = 0;
		MoveAndCollide(xSpd, ySpd);
		
		if (input.left && input.right) {
			state = states.idle;
		} else if (input.left || input.right) {
			state = states.walk;
		}
		break;
		#endregion
	
	case states.walk:
		#region Walk State
		sprite = sprSmolMarioWalk;
		
		if (input.left) {
			newXDir = -1;
		} else if (input.right){
			newXDir = 1;
		}
		
		if (newXDir != xDir && xSpd > walkSkidTreshold){
			state = states.skid;
			break;
		} else if (newXDir != xDir) {
			xSpd = 0;
		}
		
		xDir = newXDir;
		
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
		
		MoveAndCollide(xSpd * xDir, ySpd);
		
		if (xSpd <= 0) {
			state = states.idle;
		}
		break;
		#endregion
	
	case states.run:
		#region Run State
		break;
		#endregion
	
	case states.jump:
		#region Jump State
		break;
		#endregion
	
	case states.skid:
		#region Skid State
		sprite = sprSmolMarioSkid;		
		
		if (xSpd > 0) {
			xSpd -= walkAccel * 2;
		}
		
		x += xSpd * xDir;
		
		if (xSpd <= 0) {
			xSpd = 0;
			xDir = newXDir;			
			state = states.idle;
		}
		
		break;
		#endregion
	
	case states.duck:
		#region Duck State
		break;
		#endregion
}