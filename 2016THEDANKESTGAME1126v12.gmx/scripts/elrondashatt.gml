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

if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
