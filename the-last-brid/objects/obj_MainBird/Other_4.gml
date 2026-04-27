xspd = 0
yspd = 0
//进入非森林房间隐藏自己
if room = WormPicking
{
	sprite_index = spr_blank
}
else
{
	sprite_index = spr_MainBird_right
}

//出生在上个交互的树
if instance_exists(global.tree){
	x = global.tree.x
    y = global.tree.y 
}

//设置婴儿鸟名字条
if global.BBirdDeath = false
{
	BabyBirdName = "BabyHunger"
}
else
{
	BabyBirdName = "Dead"
}

global.start = false
trans = false
