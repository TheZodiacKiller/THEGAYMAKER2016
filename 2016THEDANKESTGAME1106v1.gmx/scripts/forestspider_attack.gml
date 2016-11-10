///forestspider_attack 
if instance_exists(o_player) {
sprite_index = spr_forestspiderattack;
target = instance_nearest(x,y,o_player);
if target.x > x {
    image_xscale = -1;
} else {
    image_xscale = 1;
    }
}


