///spiderqueen_checkforplayer
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y)
    if (dis < escape) && (webup > 240) {
        targetx = o_player.x;
        targety = o_player.y;
        webup = 0;
        state = spiderqueen_webup;
        }
    if (dis < attrange) {
        
        state = spiderqueen_attack;
        targetx = o_player.x;
        targety = o_player.y;
        }
    if (dis < sight) {
        state = spiderqueen_chase;
        targetx = o_player.x;
        targety = o_player.y;
        } else {
            spiderqueen_choose_state();
        }
        } else {
        spiderqueen_choose_state();
    }

