///Elron L2
image_speed = .25;
sprite_index = spr_elronL2;

if (image_index < 3)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    var force = -30;
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
            xx = x+8;
            yy = y;
            break;
        case -1:
            xx = x-8;
            yy = y;
            break;
            }
    var a = instance_create(xx,yy,o_elronhitbox2);
    a.creator = id;
    if instance_exists(o_elronBbuff)
        with(o_elronBbuff)
            instance_destroy();
    }

if image_index >= 7 && (la_key) {
    image_index = 0;
    att = false;
    state = elronl3;
    }
if image_index >= 7 && (ha_key) {
    image_index = 0;
    state = elronh1v2;
    }
    
if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
