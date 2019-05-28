/// @description Insert description here
// You can write your code in this editor

if(timer != 0){
timer--;}
else{
var collision_h = place_meeting(x, y, hwall);
var collision_v = place_meeting(x, y, vwall);
var collision_player = place_meeting(x, y, Player);
if (collision_h){
	vel_y *= -1;
}
else if(collision_player){
	vel_x *= -1;
	if(vel_x > 8 || vel_x <8) ;
	else if(vel_x <0) vel_x--;
	else if(vel_x>0) vel_x++;
	vel_y = random_range(-2,2);
}
else if(collision_v){
	instance_destroy()
	instance_create_depth(355, 235, 0, ball);
}

y += vel_y;
x += vel_x;
}