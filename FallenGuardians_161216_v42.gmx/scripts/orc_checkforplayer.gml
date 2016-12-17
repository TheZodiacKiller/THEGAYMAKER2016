///orc_checkforplayer
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y)
    
    if (dis < sight) {
        state = orc_chase;
        targetx = o_player.x;
        targety = o_player.y;
        } else {
            orc_choose_next_state();
        }
        } else {
        orc_choose_next_state();
    }

