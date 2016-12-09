///enemy_checkforplayer
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y)
    if (dis < attrange) {
        
        state = forestspider_attack;
        targetx = o_player.x;
        targety = o_player.y;
        }
    if (dis < sight) {
        state = forestspider_chase;
        targetx = o_player.x;
        targety = o_player.y;
        } else {
            enemy_choose_next_state();
        }
        } else {
        enemy_choose_next_state();
    }

