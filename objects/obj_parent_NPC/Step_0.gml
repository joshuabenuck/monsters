
// This approach removes gaps
if (moveX != 0) {
	if (place_meeting(x+moveX, y, obj_collision)) {
	  // repeat up to number of pixels we would be moving
	  repeat(abs(moveX)) {
	    // if still a gap, move closer
	    if (!place_meeting(x+sign(moveX), y, obj_collision)) { x += sign(moveX); }
	    // otherwise, we've hit and should stop
	    else { break; }
	  }
	  moveX = 0;
	}
}

if (moveY != 0) {
	if (place_meeting(x, y+moveY, obj_collision)) {
	  // repeat up to number of pixels we would be moving
	  repeat(abs(moveY)) {
	    // if still a gap, move closer
	    if (!place_meeting(x, y+sign(moveY), obj_collision)) { y += sign(moveY); }
	    // otherwise, we've hit and should stop
	    else { break; }
	  }
	  moveY = 0;
	}
}

x += moveX;
y += moveY;
