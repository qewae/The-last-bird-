 var cam_x = camera_get_view_x(view_camera[0])
 
layer_x("Background_Mid", lerp(0, cam_x, 0.5))
layer_x("Background_Back", lerp(0, cam_x, 0.7))
