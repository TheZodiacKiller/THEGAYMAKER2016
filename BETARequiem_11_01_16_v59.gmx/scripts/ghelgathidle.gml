//ghelgathidle
if hp <= 0 
    state = ghelgathdeath;
var pdir = point_direction(x, y, x + 32, y);
  var force = spd;
  var vx = lengthdir_x(force, pdir);
  var vy = lengthdir_y(force, pdir);

  physics_apply_force(x, y, vx, vy);

if spellcast >= maxspellcast {
    state = ghelgathattack;
    spellcast = 0;
    }

  
var max_speed = 15;
phy_speed_x = clamp(phy_speed_x, -max_speed, max_speed);
phy_speed_y = clamp(phy_speed_y, -max_speed, max_speed);



