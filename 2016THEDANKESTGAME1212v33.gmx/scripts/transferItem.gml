///transferItem(i, itemId, sprite);

var i = argument0;
var itemId = argument1;
var sprite = argument2;

var tempSpr = spr;


if(tempSpr == sprite){
    global.slot[i] = itemId; 
    global.slotCount[i] = global.slotCount[slotTaken]; //switching slot count from old to new
    global.slotCount[slotTaken] = 0;
    global.slot[slotTaken] = "noone";
    spr = nosprite;
} 

