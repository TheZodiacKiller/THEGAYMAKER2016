///chieftain_choose_next_state
if (alarm[0] <= 0) {
    state = chieftain_idle;
    alarm[0] = room_speed*irandom_range(2,4);
    targetx = random(room_width);
    targety = random(room_height);
    
    }
