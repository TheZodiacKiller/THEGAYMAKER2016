///releaseSlot(itemNum, sprite, object);

var tempSpr = spr;

var itemNum = argument0;
var sprite = argument1;
var object = argument2;
             
if(tempSpr == sprite){
    for(j=0;j<global.slotCount[slotTaken];j++)instance_create(o_player.x+random_range(48,64)*o_player.facing,o_player.y,object);
    global.item[itemNum] = 0;
    global.slotCount[slotTaken] = 0;
    global.slot[slotTaken] = "noone";
    spr = nosprite;
}

