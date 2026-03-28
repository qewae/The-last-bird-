if room = Menu
{
	audio_play_sound(snd_mockingBirdCall,0,true)
	audio_pause_sound(snd_AmbientSound)
}

if room = Forest
{
	audio_play_sound(snd_AmbientSound, 0 ,true)
	audio_stop_sound(snd_mockingBirdCall)
}
