///icemageget_path_to_player()
if instance_exists(o_player) {
if mp_grid_path(Level.grid_path, path, x, y, o_player.x, o_player.y, true)
{
  var path_x = path_get_point_x(path, 1);
  var path_y = path_get_point_y(path, 1);

  var pdir = point_direction(x, y, path_x, path_y);
  var force = spd;
  var vx = lengthdir_x(force, pdir);
  var vy = lengthdir_y(force, pdir);
  
  physics_apply_force(x, y, vx, vy);
}
//Attack
if (dis < attrange) && attcounter >= maxattcounter {
        var i;
        attcounter = 0;
        for (i = 0; i < 3; i++) {
        var a = instance_create(x, y, o_firebullet);
        with(a) {
            direction = point_direction(x, y, o_player.x, o_player.y);
            phy_speed_x = lengthdir_x(2.5,direction + ((i - 1) * 15));
            phy_speed_y = lengthdir_y(2.5,direction + ((i - 1) * 15));
            phy_rotation = -point_direction(x,y,o_player.x + ((i - 1) * 15),o_player.y + ((i - 1) * 15));
            creator = id;
            }
        }
    }


//


// Clamp the speed so to prevent moving too fast
var max_speed = 10;
phy_speed_x = clamp(phy_speed_x, -max_speed, max_speed);
phy_speed_y = clamp(phy_speed_y, -max_speed, max_speed);
}


