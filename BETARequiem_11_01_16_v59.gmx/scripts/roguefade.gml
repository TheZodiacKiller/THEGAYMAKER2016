///roguefade

image_speed = 0.4;
sprite_index = spr_roguefade;
//If sprite index is equal to a case, do something

    
    
if image_index >= 4 && fade == false {


var damage = instance_create(x, y+5, o_fadeAOE);



    
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    fade = true;
}

