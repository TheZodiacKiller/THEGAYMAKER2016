///goblin_checkforplayer
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y)
    
    if (dis < sight) {
        state = goblin_chase;
        targetx = o_player.x;
        targety = o_player.y;
        } else {
            goblin_choose_next_state();
        }
        } else {
        goblin_choose_next_state();
    }

