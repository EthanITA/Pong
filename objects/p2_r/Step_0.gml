/// @description Insert description here
// You can write your code in this editor

var move = keyboard_check(player[p_id, vec.down]) - keyboard_check(player[p_id, vec.up]);

player[p_id, vec.vel_y] = move * player[p_id, vec.steps_frame];

var collision = place_meeting(x, y+player[p_id, vec.vel_y], hwall)
y = y + player[p_id, vec.vel_y]*(!collision);