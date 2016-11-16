///scr_sniperattack
    image_speed = 0.18;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something



    
if firesnipe == false {


   
    
    //

    var b = instance_create(o_sniper.x, o_sniper.y, o_snipelaser);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
    with (o_snipecast)
        instance_destroy();
    

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    firesnipe = true;
}




