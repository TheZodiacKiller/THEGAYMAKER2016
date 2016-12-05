///orc_chase
orc_checkforplayer();
sight = 500;
alarm[2] = 300;
var dis = point_distance(x, y, o_player.x, o_player.y)
    
    if (dis < attrange) && attspd > 60 { //Melee
       state = orc_attack;
        }
    if dis < rattrange && dis > attrange && rattspd > 240 //Ranged
        state = orc_throw;    
    else {
    spd = 0.6;
    var dir = point_direction(x, y, targetx, targety);
    
    
    image_speed = .08;
    sprite_index = spr_orcwalk;
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if hspd != 0
        image_xscale = sign(hspd);
}
