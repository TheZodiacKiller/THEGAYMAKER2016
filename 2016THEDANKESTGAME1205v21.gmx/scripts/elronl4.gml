///Elron L4
image_speed = .25;
sprite_index = spr_elronL4;

if (image_index < 3)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    force2 = -force * 0.3;
    var vx = lengthdir_x(force2, pdir);
    var vy = lengthdir_y(force2, pdir);
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
    
    }
if image_index >= 6 && (ha_key) {
    image_index = 0;
    state = elronh1v3;
    }
    
if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
//SKILL B
if a2_key && !instance_exists(o_elronBfx) {
    instance_create(x,y,o_elronBbuff);
    instance_create(x,y,o_elronBfx);
    
    }
