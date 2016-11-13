///Elron L1
image_speed = .4;
sprite_index = spr_elronL1;
if image_xscale == 1 and image_index >= 4{
    var pdir = point_direction(x, y, x+1, y);
    var force = 4;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 and image_index >= 4{
    var pdir = point_direction(x, y, x-1, y);
    var force = 4;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_index >= 9 && (la_key) {
    image_index = 0;
    state = elronl2;
    }

