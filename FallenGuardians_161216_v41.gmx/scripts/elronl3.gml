///Elron L3
image_speed = .3*global.atkspd;
sprite_index = spr_elronL3;
if (image_index <= 4)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    force2 = force * 1.1;
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
            xx = x+16;
            yy = y;
            break;
        case -1:
            xx = x-16;
            yy = y;
            break;
            }
    if roll(global.crit)
        var a = instance_create(xx,yy,o_elronhitboxcrit);
    else
        var a = instance_create(xx,yy,o_elronhitbox);
    a.creator = id;
    
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
//SKILL B
if a2_key && !instance_exists(o_elronBfx) {
    instance_create(x,y,o_elronBbuff);
    instance_create(x,y,o_elronBfx);
    
    }
