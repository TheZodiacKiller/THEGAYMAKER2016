///spiderqueen_summon 
spd = 0;
attspd = 0;
image_speed = 0.2;
sprite_index = spr_spiderqueensummon;
if checkforplayer == false {
    checkforplayer = true;
    target = instance_nearest(x,y,o_player);
    if target.x < x {
        image_xscale = -1;
    } else {
        image_xscale = 1;
        }
    
    }

    
    



