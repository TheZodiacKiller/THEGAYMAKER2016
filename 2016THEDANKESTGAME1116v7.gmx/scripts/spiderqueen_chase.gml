///spiderqueen_chase
spiderqueen_checkforplayer();
var dis = point_distance(x, y, o_player.x, o_player.y)
if (dis < escape) && (webup > 240) {
        targetx = o_player.x;
        targety = o_player.y;
        webup = 0;
        state = spiderqueen_webup;
        }
if (dis < attrange) {
        
        targetx = o_player.x;
        targety = o_player.y;
        state = spiderqueen_attack;
        
        } else {
    spd = 0.5;
    var dir = point_direction(x, y, targetx, targety);
    
    
    image_speed = .08;
    sprite_index = spr_spiderqueenwalk;
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if hspd != 0
        image_xscale = sign(hspd);
}
