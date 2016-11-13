image_speed = .33;
sprite_index = spr_elronH1V2;
if image_xscale == 1 && image_index >= 13 {
    var pdir = point_direction(x, y, x+1, y);
    var force = 6;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index >= 13  {
    var pdir = point_direction(x, y, x-1, y);
    var force = 6;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
