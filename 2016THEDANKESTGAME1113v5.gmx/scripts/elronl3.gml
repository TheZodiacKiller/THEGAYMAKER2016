///Elron L3
image_speed = .3;
sprite_index = spr_elronL3;
if image_xscale == 1 && image_index <= 4 && image_index > 1 {
    var pdir = point_direction(x, y, x+1, y);
    var force = 80;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index <= 4 && image_index > 1 {
    var pdir = point_direction(x, y, x-1, y);
    var force = 80;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_index >= 5 && (la_key) {
    image_index = 0;
    state = elronl4;
    }

