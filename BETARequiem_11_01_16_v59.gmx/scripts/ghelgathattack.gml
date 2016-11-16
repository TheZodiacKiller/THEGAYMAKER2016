//ghelgathattack
alarm[0] = 150;
sprite_index = spr_ghelgathattack;
if hp <= 0 
    state = ghelgathdeath;
var pdir = point_direction(x, y, x, y);
  var force = 0;
  var vx = lengthdir_x(force, pdir);
  var vy = lengthdir_y(force, pdir);

  physics_apply_force(x, y, vx, vy);

if iceready > maxiceready && instance_exists(o_player) {
    var a = instance_create(o_player.x, o_player.y, o_icicleattack);
    a.creator = id;
    iceready = 0;
    }

  
var max_speed = 15;
phy_speed_x = clamp(phy_speed_x, -max_speed, max_speed);
phy_speed_y = clamp(phy_speed_y, -max_speed, max_speed);



