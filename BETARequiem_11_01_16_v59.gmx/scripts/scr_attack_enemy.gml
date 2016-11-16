///scr_attack_enemy
image_speed = 0.25;
//If sprite index is equal to a case, do something

switch (sprite_index) {
    case spr_noviceLEFT:
    image_index = 0;
    sprite_index = spr_noviceAttLEFT;
    break;
    
    case spr_noviceRIGHT:
    image_index = 0;
    sprite_index = spr_noviceAttRIGHT;
    break;
    }


if image_index >= 8 && enemyatt == false {
var xx = 0;
var yy = 0;

switch (sprite_index) {
    case spr_noviceAttLEFT:
        xx = x-24;
        yy = y;
    break;
    
    case spr_noviceAttRIGHT:
        xx = x+24;
        yy = y;
    break;

}
    var damage = instance_create(xx, yy, o_enemydamage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    enemyatt = true;
}



