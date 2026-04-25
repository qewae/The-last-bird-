if room = Forest{
target_sound = obj_racoon_Walk.target_sound
show_debug_message(asset_get_index(target_sound))  // Should return a number > -1
show_debug_message(target_sound)  // Should show the sound index
draw_text(x,y,target_sound)
}