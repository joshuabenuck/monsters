input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

if (input_walk or input_run) {
  spd = abs((input_walk*w_spd) - (input_run*r_spd));
} else {
  spd = n_spd;
}

moveX = 0;
moveY = 0;

moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

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
