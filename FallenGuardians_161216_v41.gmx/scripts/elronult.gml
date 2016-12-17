///Elron Ult
image_speed = .35*global.atkspd;
sprite_index = spr_elronult;
if image_index >= 29 && att = false {
    att = true;
    instance_create(x,y,o_elronultsigil);
}
//SKILL B
if a2_key && !instance_exists(o_elronBfx) {
    instance_create(x,y,o_elronBbuff);
    instance_create(x,y,o_elronBfx);
    
    }

