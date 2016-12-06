///addToInv(string objlist, object);

inv = oInventory;
var toName = argument0;
var item = argument1;
var canAdd = false;

for(i = 0; i < inv.totalSlots; i++)
{
    //Items that cant stack
    if(toName != "hatchet" and toName != "testt")
    {
            //adding to inventory if the slot already exsists
        if(global.slot[i] == toName && global.slotCount[i] < 8) //Max amount an item can stack
        {   
            with(item) instance_destroy();
            global.slotCount[i]++; //adding to slot item list
            addToList(toName);
            break;       
        }   
        
        for(j = 0; j < 15; j++){
            if(global.slot[j] == "noone"){
              canAdd = true;
            }
        }
        
        if(i == inv.totalSlots-1 && canAdd = true) //this means that item does not exsist
        {
            
            with(item) instance_destroy();    
        
            for(j = 0; j < inv.totalSlots; j++){
                if(global.slot[j] == "noone"){
                   global.slotCount[j]++; //adding to slot item list
                   global.slot[j] = toName;
                   addToList(toName);
                   break;
                }
            }  
        }
    }else{
    for(j = 0; j < 15; j++){
            if(global.slot[j] == "noone"){
              canAdd = true;
            }
        }
        
        if(i == inv.totalSlots-1 && canAdd = true) //this means that item does not exsist
        {
            
            with(item) instance_destroy();    
        
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
}

//show_debug_message("end");

