///forestspider_attack 
spd = 0;
attspd = 0;
image_speed = 0.1;
sprite_index = spr_forestspiderattack;
target = instance_nearest(x,y,o_player);
if target.x < x {
    image_xscale = -1;
} else {
    image_xscale =1;
    }



