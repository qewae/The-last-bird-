function Movement(){


if keyboard_check(ord("D")){
	xspd = 5
	sprite_index = spr_MainBird_right
}
if keyboard_check(ord("A")){
	xspd = -5
	sprite_index = spr_MainBird_left
}


if keyboard_check(ord("W")){
    yspd = -5
}
if keyboard_check(ord("S")){
	yspd = 5
}
if keyboard_check(ord("W")) == false and keyboard_check(ord("S")) == false{
	yspd = 0
}
}


