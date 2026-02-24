//开始起飞
if global.start = false and keyboard_check(vk_space) and SpaceT == true
{
	global.start = true
	SpaceT = false
	xspd = 5
	yspd = -5
	alarm_set(0,15)
}
//起飞后才能动
if fly = true
{
Movement()
}
y += yspd
x += xspd



//转场
if trans = true
{
	yspd += 0.5
}


if trans = true and yspd = 0
{
	trans = false 
	fly = true
	yspd = 0
}

if global.start == false
{
	sprite_index = spr_MainBird_stand
}

if room != WormPicking{
if xspd == 5
{
	sprite_index = spr_MainBird_right
}
if xspd == -5
{
	sprite_index = spr_MainBird_left
}
if xspd == 0 
{
	sprite_index = spr_MainBird_stand
}
}
else
{
	sprite_index = spr_blank
}





	


//吃虫子





depth = -10
