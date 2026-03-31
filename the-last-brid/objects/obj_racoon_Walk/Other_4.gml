if global.day >= deadDay
{
	 death = true
	 sprite_index = Dsprite
}
else
{
	death = false
}

if death == false
{

ReversePath(target_path,3)
}