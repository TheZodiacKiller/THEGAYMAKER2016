///scr_check_for_player
if (instance_exists(o_player)) {
    var dis = point_distance(x, y, o_player.x, o_player.y);
    if (dis < attack) {
        alarm[1] = room_speed;
        state = scr_attack_enemy;
        targetx = o_player.x;
        targety = o_player.y
    }

    else if (dis < sight){
        alarm[1] = room_speed;
        state = scr_enemy_chase_state;
        targetx = o_player.x;
        targety = o_player.y
        
    } else {
        scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}
