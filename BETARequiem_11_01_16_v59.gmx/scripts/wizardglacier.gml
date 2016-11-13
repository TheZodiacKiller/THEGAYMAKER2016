///magipillarofflame

    image_speed = 0.35;
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 90 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_wizardAttRight;



if dir > 90 && dir < 225
    sprite_index = spr_wizardAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_wizardAttDown;




if att == false && image_index >= 4 {
        
        var a = instance_create(mouse_x, mouse_y, o_glacierattack);
            
            
        
        //Tells the damage object that THE PLAYER (id) is the creator
        a.creator = id;
        att = true;
        
    }



