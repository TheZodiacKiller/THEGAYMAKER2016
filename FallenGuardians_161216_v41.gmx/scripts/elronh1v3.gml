if image_index <= 12
    image_speed = .6*global.atkspd;
if image_index > 12
    image_speed = .25*global.atkspd;
sprite_index = spr_elronH1V3;
force2 = force * 0.28;
if image_xscale == 1 && image_index >= 12 {
    var pdir = point_direction(x, y, x+1, y);
    var vx = lengthdir_x(force2, pdir);
    var vy = lengthdir_y(force2, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index >= 12  {
    var pdir = point_direction(x, y, x-1, y);
    var vx = lengthdir_x(force2, pdir);
    var vy = lengthdir_y(force2, pdir);
    physics_apply_force(x, y, vx, vy);
  }
//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 15 && att == false {
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
        var a = instance_create(xx,yy,o_elronheavyhb);
    else
        var a = instance_create(xx,yy,o_elronheavyhb);
    a.creator = id;
    
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
