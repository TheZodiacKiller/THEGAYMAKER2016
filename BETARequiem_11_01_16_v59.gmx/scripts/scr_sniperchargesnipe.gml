///scr_sniperchargesnipe
    image_speed = 0.18;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_sniperAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_sniperAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_sniperAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_sniperAttDown;


    
if image_index >= 3 && chargesnipe == false {


   
    
    //
    
    var b = instance_create(o_player.x, o_player.y, o_snipecast);
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    
    if instance_exists(o_snipecast)
        image_speed = 0;
    

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    chargesnipe = true;
}

if (rc_key) && instance_exists(o_snipecast)
    state = scr_sniperfiresnipe;

