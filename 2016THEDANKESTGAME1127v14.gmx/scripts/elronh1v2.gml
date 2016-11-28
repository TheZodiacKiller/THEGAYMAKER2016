if image_index <= 12
    image_speed = .8;
if image_index > 12
    image_speed = .4;
sprite_index = spr_elronH1V2;
if image_xscale == 1 && image_index >= 12 {
    var pdir = point_direction(x, y, x+1, y);
    var force = 24;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index >= 12  {
    var pdir = point_direction(x, y, x-1, y);
    var force = 24;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
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
