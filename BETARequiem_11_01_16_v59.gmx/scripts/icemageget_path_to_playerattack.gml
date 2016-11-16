///icemageget_path_to_playerattack()

if attcounter >= 120 {
    image_speed = 0.15;
    switch (sprite_index) {
    case spr_icemageRIGHT:
    sprite_index = spr_icemageAttRIGHT;
    break;
    
    case spr_icemageLEFT:
    sprite_index = spr_icemageAttLEFT;
    break;
    }
    
    if image_index >= 8 && enemyatt == false {
        attcounter = 0;
        var a = instance_create(x, y, o_icebullet);
        enemyatt = true;
        with(a) {
            direction = point_direction(x, y, o_player.x, o_player.y);
            phy_speed_x = lengthdir_x(3,direction);
            phy_speed_y = lengthdir_y(3,direction);
            phy_rotation = -point_direction(x,y,o_player.x,o_player.y);
            creator = id;
        }
    }
}


