if image_index <= 12
    image_speed = .6;
if image_index > 12
    image_speed = .25;
sprite_index = spr_elronH1V2;
force2 = force * 0.24;
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
  
if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
//SKILL B
if a2_key && !instance_exists(o_elronBfx) {
    instance_create(x,y,o_elronBbuff);
    instance_create(x,y,o_elronBfx);
    
    }
