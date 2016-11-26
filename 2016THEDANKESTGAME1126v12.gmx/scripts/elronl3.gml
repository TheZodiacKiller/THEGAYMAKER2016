///Elron L3
image_speed = .3;
sprite_index = spr_elronL3;
if (image_index <= 4)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    var force = 110;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
}
//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 2 && att == false {
    att = true;
    switch (image_xscale) {
        case 1:
            xx = x+16;
            yy = y;
            break;
        case -1:
            xx = x-16;
            yy = y;
            break;
            }
    var a = instance_create(xx,yy,o_elronhitbox);
    a.creator = id;
    if instance_exists(o_elronBbuff)
        with(o_elronBbuff)
            instance_destroy();
    }
if image_index >= 5 && (la_key) {
    att = false;
    image_index = 0;
    state = elronl4;
    }

if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
