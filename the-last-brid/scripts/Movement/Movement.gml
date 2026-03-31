function Movement(){

if room != WormPicking{
	if global.start == true {
if keyboard_check(ord("D")){
	xspd = 7.5
	if keyboard_check(vk_shift)
	{
		xspd = 15
	}
}
if keyboard_check(ord("A")){
	xspd = -7.5
	if keyboard_check(vk_shift)
	{
		xspd = -15
	}
}


if keyboard_check(ord("W")){
    yspd = -7.5
}
if keyboard_check(ord("S")){
	yspd = 7.5
}
if keyboard_check(ord("W")) == false and keyboard_check(ord("S")) == false{
	yspd = 0
}
	}
}
}


