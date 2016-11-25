///spiderqueen_webdown
sprite_index = spr_spiderqueenwebdown;
if image_index <= 8 {
    spd = 10;
    image_speed = .2
    }
if image_index > 8 {
    spd = 0;
    image_speed = .3;
    }

if o_player.x > x
    image_xscale = 1;
if o_player.x < x
    image_xscale = -1;
var dir = point_direction(x, y, targetx, targety);

var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
