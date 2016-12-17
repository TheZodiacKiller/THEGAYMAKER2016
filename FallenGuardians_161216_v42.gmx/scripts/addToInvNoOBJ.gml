///addToInv(string objlist);

inv = oInventory;
var toName = argument0;

for(i = 0; i < inv.totalSlots; i++)
{
    //adding to inventory if the slot already exsists
    if(global.slot[i] == toName && global.slotCount[i] < 3)
    {   
        global.slotCount[i]++; //adding to slot item list
        addToList(toName);
        break;       
    }   
    
    if(i == inv.totalSlots-1) //this means that item does not exsist
    {
        for(j = 0; j < inv.totalSlots; j++){
            if(global.slot[j] == "noone"){
               global.slotCount[j]++; //adding to slot item list
               global.slot[j] = toName;
               addToList(toName);
               break;
            }
        }  
    }
}

//show_debug_message("end");

