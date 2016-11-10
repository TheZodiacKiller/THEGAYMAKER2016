///forestspider_wander()
enemy_checkforplayer();
sprite_index = spr_forestspiderwalk;
    spd = .25;
if (point_distance(x, y, targetx, targety) > spd) {
    
    var dir = point_direction(x, y, targetx, targety);
    image_speed = .1;
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if hspd != 0
        image_xscale = sign(hspd);
    }
