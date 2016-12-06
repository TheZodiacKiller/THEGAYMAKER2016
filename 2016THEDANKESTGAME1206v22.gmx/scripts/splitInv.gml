///splitInv(i, itemId, sprite);

var i = argument0;
var itemId = argument1;
var sprite = argument2;

var canAdd = false;

var inv = oInventory;

//limiting the split numbers
for(j = 0; j < 15; j++){
    if(global.slot[j] == "noone"){
      canAdd = true;
    }
}

if(global.slot[i] == itemId && canAdd){ //this means we have clicked on a slot with an item
   for(j = 0; j < inv.totalSlots; j++){
            if(global.slot[j] == "noone" && global.slotCount[i] > 1)
            {
               var amount = global.slotCount[i];
               if(amount >= 2){
                   if(frac(amount/2) == 0)
                   { //even number
                       global.slot[j] = itemId;
                       
                       global.slotCount[j] = floor(amount/2);
                       global.slotCount[i] = floor(amount/2);  
                   }
                   else
                   {//odd number
                       global.slot[j] = itemId;
                       
                       global.slotCount[j] = floor(amount/2);
                       global.slotCount[i] = roundUp(amount/2);
                   }
               }else{
                     global.slot[j] = itemId;
                     global.slotCount[j] = amount;
                     global.slotCount[i] = amount;
               }
                             
               break;
               return 0;
            }
        }
}

