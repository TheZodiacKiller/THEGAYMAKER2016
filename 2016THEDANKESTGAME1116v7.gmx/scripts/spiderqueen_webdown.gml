///spiderqueen_webdown

if image_index <= 8 {
    spd = 10;
    image_speed = .2
    }
if image_index > 8 {
    spd = 0;
    image_speed = .3;
    }


var dir = point_direction(x, y,targetx,targety);

sprite_index = spr_spiderqueenwebdown;
if o_player.x > x
    image_xscale = 1;
if o_player.x < x
    image_xscale = -1;
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
if hspd != 0
    image_xscale = sign(hspd);

