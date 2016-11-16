///scr_attack_state_one

image_speed = 0.2;
sprite_index = spr_crusaderdenyevil;
//If sprite index is equal to a case, do something

    
    
if image_index >= 8 && repel == false {


var damage = instance_create(x, y+5, o_denyevil);



    
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    repel = true;
}

