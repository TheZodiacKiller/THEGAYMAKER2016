///clickSlot(i, itemId, sprite);

var i = argument0;
var itemId = argument1;
var sprite = argument2;

if(global.slot[i] != "noone")
 { //this means we have clicked on a slot with an item
   if(global.slot[i] == itemId){
      slotTaken = i;
      spr = sprite;                
   }
 }

