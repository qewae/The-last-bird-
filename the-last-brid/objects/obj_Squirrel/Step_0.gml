if collision_rectangle(x - x1,y - 1500 ,x2,y2,obj_MainBird, false, true) and playCD == false
{
	playCD = true
	audio_play_sound(target_sound,0,false)
	alarm_set(0,30* snd_Time)
}
else if !collision_rectangle(x - x1,y - 1500 ,x2,y2,obj_MainBird, false, true)
{
	audio_pause_sound(target_sound)
	playCD = false
}
