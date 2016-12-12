///transferItem(i, itemId, sprite);

var i = argument0;
var itemId = argument1;
var sprite = argument2;

var tempSpr = spr;

var inv = oInventory;

//transferring an item to another slot with same item
if(tempSpr == sprite){
    if(global.slot[i] == itemId){
          if(global.slotCount[i] + global.slotCount[slotTaken] <= 16){
              var lastSlot = global.slotCount[slotTaken];
              global.slotCount[i] += global.slotCount[slotTaken];
              global.slotCount[slotTaken] -= lastSlot; 
          }else{
              if(global.slotCount[i] > global.slotCount[slotTaken]){
                  var give = 16 - global.slotCount[i];
                  var back = global.slotCount[slotTaken] - give;
                  global.slotCount[i] += give;
                  global.slotCount[slotTaken] = back;
              }else{
                  var give = 16 - global.slotCount[i];
                  var back = global.slotCount[slotTaken] - give;
                  global.slotCount[slotTaken] = back;
                  global.slotCount[i] += give;
              }
              
              
          }                 
    }

    spr = nosprite;
} 

