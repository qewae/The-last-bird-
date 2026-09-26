if global.day > DestroyDay
{
	instance_create_layer(x,y,"instances", obj_CuttedTree)
	instance_destroy()
}
alarm_set(1,1)
InteractTreeApply(spr_Tree3D, spr_Tree3M, spr_Tree3N)
