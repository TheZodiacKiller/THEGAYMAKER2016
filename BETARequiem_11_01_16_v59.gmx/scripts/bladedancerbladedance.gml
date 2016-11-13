///bladedancerbladedance

image_speed = 1;
sprite_index = spr_bdbladedance;
//If sprite index is equal to a case, do something

    
    
if image_index >= 9 && dance == false {


var damage = instance_create(x, y+5, o_bladedanceAOE);
damage.creator = id;



    
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    dance = true;
}

