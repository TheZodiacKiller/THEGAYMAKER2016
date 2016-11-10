image_speed = .33;
sprite_index = spr_elronH1V3;
if image_xscale == 1 && image_index >= 12 {
    var pdir = point_direction(x, y, x+1, y);
    var force = 7;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
if image_xscale == -1 && image_index >= 12  {
    var pdir = point_direction(x, y, x-1, y);
    var force = 7;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
  }
