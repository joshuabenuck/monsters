//event_inherited()
//is_undefined()

w_spd = 1;
n_spd = 2;
r_spd = 3;
spd = w_spd;

x_frame = 0;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);


if (is_undefined(spr_base)) spr_base = -1;
if (is_undefined(spr_arms)) spr_arms = -1;
if (is_undefined(spr_torso)) spr_torso = -1;
if (is_undefined(spr_hair)) spr_hair = -1;
if (is_undefined(spr_legs)) spr_legs = -1;
if (is_undefined(spr_feet)) spr_feet = -1; 

spr_parts = [
	spr_base, spr_legs, spr_arms, spr_torso, spr_hair, spr_feet
];

moveX = 0;
moveY = 0;

alarm[1] = 1;
