///spiderqueen_chase
spiderqueen_checkforplayer();

var dis = point_distance(x, y, o_player.x, o_player.y);
if (dis < escape) && (webup > 600) {
        image_index = 0;
        targetx = o_player.x;
        targety = o_player.y;
        
        state = spiderqueen_webup;
        }
if (dis < attrange) {
    if (summon > 1200) {
        image_index = 0;
        summoning = 0;
        targetx = o_player.x;
        targety = o_player.y;
        state = spiderqueen_summon;
        }
    if (attspd > 90) {
        image_index = 0;
        attspd = 0;
        targetx = o_player.x;
        targety = o_player.y;
        state = choose(spiderqueen_webattack,spiderqueen_attack);
        }
        
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
