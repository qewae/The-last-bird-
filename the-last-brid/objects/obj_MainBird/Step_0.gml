//开始起飞
if room = Forest
{
if global.start = false and keyboard_check(vk_space)
{
	if SpaceBarCD == false
	{
	SpaceBarCD = true
	audio_play_sound(snd__buttonClick, 0, false)
	alarm_set(3,15)
	}
	
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

//空气墙
if place_meeting(x + xspd,y,obj_wall) == true
{
 x -= xspd
}
if place_meeting(x,y + 7.5,obj_wall) == true
{
 y -= 7.5
}


if place_meeting(x,y - 7.5,obj_wall) == true
{
 y += 7.5
}

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

//根据方向改画面
if room = Forest
{
	
	
	
if xspd > 0
{
	sprite_index = spr_MainBird_right
}
if xspd < 0
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


if collision_circle(x,y,64, obj_Tree,false,false) and keyboard_check(ord("F"))
{
	if FkeyCD == false
	{
		FkeyCD = true
		audio_play_sound(snd__buttonClick,0,false)
		alarm_set(4,10)
	}
	if global.YT == true 
	{
	global.YT = false	
	}
}
if collision_circle(x,y,64, obj_nest,false,false) and keyboard_check(ord("F"))
{
	//时间重置
if global.day == 1 
{
	if global.DEnd == true
	{
	
	global.time = 0
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
	
	global.time = 0
	StopMoving(fly)
	global.SY = false
	global.transition_Day = true
	global.DEnd = false
	global.start = false
	StopMoving(global.start)
	AllTavlTrue()
}

}



//声音
if room = Forest
if xspd !=0 
{
	if WingCD == false
	{
	WingCD = true
	audio_play_sound(snd_WingFlap, 0, false)
	alarm_set(2,30*2.6)
	}
}
}






