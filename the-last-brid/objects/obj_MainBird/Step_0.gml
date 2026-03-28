//开始起飞
if global.start = false and keyboard_check(vk_space)
{
	audio_play_sound(snd__buttonClick, 0, false)
	if global.SpaceT == true
	{
		global.SpaceT = false	
	}
	
	xspd = 7.5
	yspd = -7.5
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
	global.start = true
}

if global.start == false
{
	sprite_index = spr_MainBird_stand
}

if room = Forest
{
	
	
	
if xspd == 7.5
{
	sprite_index = spr_MainBird_right
}
if xspd == -7.5
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


if collision_circle(x,y,64, obj_Tree,false,false) and global.YT == true and keyboard_check(ord("F"))
{
	audio_play_sound(snd__buttonClick, 0, false)
	global.YT = false
		
}
	
if collision_circle(x,y,64, obj_nest,false,false) and keyboard_check(ord("F"))
{
	audio_play_sound(snd__buttonClick, 0, false)
if global.day == 1 
{
	if global.DEnd == true
	{
	global.day += 1
	global.time = 1
	StopMoving(fly)
	global.SY = false
	global.transition_Day = true
	global.DEnd = false
	global.start = false
	StopMoving(global.start)
	AllTavlTrue()
	}
}
else
{
	global.day += 1
	global.time = 1
	StopMoving(fly)
	global.SY = false
	global.transition_Day = true
	global.DEnd = false
	global.start = false
	StopMoving(global.start)
	AllTavlTrue()
}

}




//吃虫子






