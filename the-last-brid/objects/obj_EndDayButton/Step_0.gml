if collision_rectangle(x,y,x1,y1, obj_cursor,false, false) and mouse_check_button(mb_left)
{
	if buttonCD == false{
	buttonCD = true
	audio_play_sound(snd__buttonClick, 0, false)
	global.Hunger += global.WormCount
	global.WormCount = 0
	global.transition_Feed = true
	global.day += 1
	alarm_set(0,300)
	}
	if global.BirdFeedingT == true
{
	global.BirdFeedingT = false
}
}
