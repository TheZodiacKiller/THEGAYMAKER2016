///chieftain_chase
chieftain_checkforplayer();
var dis = point_distance(x, y, o_player.x, o_player.y);
sight = 500;
spd = .25;
alarm[2] = 300;
//Warcry
if warcrylimit >= 1200 {
    image_index = 0;
    warcrylimit = 0;
    state = chieftain_warcry;
    }
//Melee Attack
if (dis < attrange) && attspd > 120 {
        
        targetx = o_player.x;
        targety = o_player.y;
        image_index = 0;
        state = chieftain_attack;
        
        } else {
    spd = 0.5;
    var dir = point_direction(x, y, targetx, targety);
    
    
    image_speed = .08;
    sprite_index = spr_chieftainwalk;
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if hspd != 0
        image_xscale = sign(hspd);
}
