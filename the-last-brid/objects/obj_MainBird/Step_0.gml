//开始起飞
if global.start = false and keyboard_check(vk_space)
{
	global.start = true
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

if collision_rectangle(y,x,x+64,y-64, obj_Tree,false,false)
{
	if keyboard_check(ord("F"))
	{
		room_goto(WormPicking)
	}
	
}



	


//吃虫子





depth = -10
