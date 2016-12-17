///Quin L1
image_speed = .2;
sprite_index = spr_quinL1;
//Push player based on image_xscale
if (image_index < 3)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    var force = 70;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
}
//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 4 && att == false {
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
    var a = instance_create(xx,yy,o_quinhitbox);
    a.creator = id;
    
    }

//Avalability of next attack after x frames.
if image_index >= 5 && (la_key) {
    att = false;
    image_index = 0;
    state = quinl2;
    }

if image_index >= 5 && (ha_key) {
    att = false;
    image_index = 0;
    state = quinh1;
    }
