///chieftain_checkforplayer
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y)
    if (dis < attrange) {
        
        state = chieftain_attack;
        targetx = o_player.x;
        targety = o_player.y;
        }
    if (dis < sight) {
        state = chieftain_chase;
        targetx = o_player.x;
        targety = o_player.y;
        } else {
            chieftain_choose_next_state();
        }
        } else {
        chieftain_choose_next_state();
    }

