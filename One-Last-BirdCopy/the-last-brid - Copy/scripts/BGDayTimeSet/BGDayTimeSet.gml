function BGDayTimeSet(DayRange1, DayRange2, TimeRange1, TimeRange2, Sprite)
{
	if (global.day >= DayRange1 and global.day <= DayRange2)
	{
		if global.time >= TimeRange1 and global.time <= TimeRange2
		{
			sprite_index = Sprite
		}
	}

}