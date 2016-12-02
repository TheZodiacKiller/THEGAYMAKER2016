///Elron Dash Attack
image_speed = .25;
sprite_index = spr_elrondashattack;
if image_xscale == 1 && image_index < 3 {
    var pdir = point_direction(x, y, x+1, y);
    var force = 80;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index < 3 {
    var pdir = point_direction(x, y, x-1, y);
    var force = 80;
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
