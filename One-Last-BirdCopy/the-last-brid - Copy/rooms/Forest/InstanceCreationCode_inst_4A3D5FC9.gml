target_path = Path_Crocodile
rightSprite = spr_racoonWalk_Right
leftSprite = spr_racoonWalk_Left
snd_Time = 13
target_sound = snd_Racoon_2
deadDay = 6
Dsprite = spr_DRacoon


show_debug_message(asset_get_index(target_sound))  // Should return a number > -1
show_debug_message(target_sound)  // Should show the sound index