///spiderqueen_webdown

spd = 3;
var dir = point_direction(x, y, targetx, targety);
    
    
image_speed = .3;
sprite_index = spr_spiderqueenwebdown;
if targetx.x > x
    image_xscale = 1;
if targetx.x < x
    image_xscale = -1;
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
phy_position_x -= hspd;
phy_position_y -= vspd;
if hspd != 0
    image_xscale = sign(hspd);

