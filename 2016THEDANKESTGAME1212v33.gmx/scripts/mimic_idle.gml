///mimic_idle
var dis = point_distance(x,y,o_player.x,o_player.y);
if dis < open && o_player.interact_key && sprite_index == spr_mimicidle {
    image_speed = .3;
    image_index = 0;
    sprite_index = spr_mimicopen;
    
    }
