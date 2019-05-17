var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_offset;
var yy = y - y_offset;

if (x_frame + (anim_speed / 60) < anim_length) { x_frame += anim_speed / 60; }
else { x_frame = 1; }

if (moveX < 0) { y_frame = 9; } //right
else if (moveX > 0) { y_frame = 11; } // left
else if (moveY < 0) { y_frame = 8; } // up
else if (moveY > 0) { y_frame = 10; } // down
else				{ x_frame = 0; }

draw_sprite(spr_character_shadow, 0, x, y);

for (i = 0; i < array_length_1d(spr_parts); i++) {
	if (spr_parts[i] == -1) continue;
	draw_sprite_part(spr_parts[i], 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
}
