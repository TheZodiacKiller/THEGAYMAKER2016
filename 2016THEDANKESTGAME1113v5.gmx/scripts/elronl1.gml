///Elron L1
image_speed = .35;
sprite_index = spr_elronL1;
if (image_xscale == 1) && (image_index < 3) {
    var pdir = point_direction(x, y, x+1, y);
    var force = 100;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index < 3 {
    var pdir = point_direction(x, y, x-1, y);
    var force = 100;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_index >= 6 && (la_key) {
    image_index = 0;
    state = elronl2;
    }

