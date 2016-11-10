///forestspider_chase
enemy_checkforplayer();
spd = 0.5;
var dir = point_direction(x, y, targetx, targety);


image_speed = .08;
sprite_index = spr_forestspiderwalk;
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
if hspd != 0
    image_xscale = sign(hspd);

