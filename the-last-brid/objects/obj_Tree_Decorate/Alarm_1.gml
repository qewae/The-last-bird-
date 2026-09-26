//available = variable_global_get(treeNum)
if SpriteChoose = 1
{
	sprite_index = spr_Tree1D
	//instance_create_layer(x,y, "Instances",obj_Tree_D1)
	//instance_destroy()
}
else if SpriteChoose = 2
{
	sprite_index = spr_Tree2D
	//instance_create_layer(x,y, "Instances",obj_Tree_D2)
	//instance_destroy()
}
else
{
	sprite_index = spr_Tree3D
	//instance_create_layer(x,y, "Instances",obj_Tree_D3)
	//instance_destroy()
}