if global.day > DestroyDay
{
	instance_create_layer(x,y,"instances", obj_CuttedTree)
	instance_destroy()
}
alarm_set(1,1)
InteractTreeApply(spr_Tree1D, spr_Tree1M, spr_Tree1N)