var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_offset;
var yy = y - y_offset;

if (moveX < 0) {
	y_frame = 9;
}
else if (moveX > 0) {
	y_frame = 11;
}
else if (moveY < 0) {
	y_frame = 8;
}
else if (moveY > 0) {
	y_frame = 10;
}
else {
	x_frame = 0;
}

for (i = 0; i < array_length_1d(spr_parts); i++) {
	draw_sprite_part(spr_parts[i], 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
}
// base
//draw_sprite_part(spr_base_male_skel, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// feet
//draw_sprite_part(spr_feet_male_shoes_black, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// legs
//draw_sprite_part(spr_legs_male_pants_teal, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// arms
//draw_sprite_part(spr_torso_male_plate_arms, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// shirt
//draw_sprite_part(spr_torso_male_plate_chest, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// hair
//draw_sprite_part(spr_hair_male_plain_blue, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

if (x_frame < anim_length - 1) {
	x_frame += anim_speed / 60;
}
else {
	x_frame = 1;
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);