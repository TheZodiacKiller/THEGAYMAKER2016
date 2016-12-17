///updateInv(cellWidth, cellHeight);


var cellWidth = argument0;
var cellHeight = argument1;
for(i = 0; i < totalSlots; i++){ //drawing the item into the correct slot
      drawInvSprite(i, "ironsword", 0, spr_ironsword);
      drawInvSprite(i, "leatherchest",  1, spr_leatherchest);
      drawInvSprite(i, "leatherboots",  2, spr_leatherboots);
      drawInvSprite(i, "ironboots",  3, spr_ironboots);
      drawInvSprite(i, "hatchet",  4, spr_hatchet);
      drawInvSprite(i, "leatherhelm",  5, spr_leatherhelm);
      drawInvSprite(i, "testt",  6, spr_testt);
      drawInvSprite(i, "broadsword",  7, spr_broadsword);
      drawInvSprite(i, "ironhelm",  8, spr_ironhelm);
      drawInvSprite(i, "ironchest",  9, spr_ironchest);
      drawInvSprite(i, "bloodmail",  10, spr_bloodmail);
      drawInvSprite(i, "robe",  11, spr_robe);
      drawInvSprite(i, "magehat",  12, spr_magehat);
      drawInvSprite(i, "mageboots",  13, spr_mageboots);
      drawInvSprite(i, "staff",  14, spr_staff);
      drawInvSprite(i, "basicsword",  15, spr_basicsword);
}

    //<----------------------------------------------------------------------------->//

//editing the inventory and managing it
for(i = 0; i < totalSlots; i++){
  if(mouse_check_button_pressed(mb_left)){
        if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
             clickSlot(i, "ironsword", spr_ironsword);
             clickSlot(i, "leatherchest", spr_leatherchest);
             clickSlot(i, "leatherboots", spr_leatherboots);
             clickSlot(i, "ironboots", spr_ironboots);
             clickSlot(i, "hatchet", spr_hatchet);
             clickSlot(i, "leatherhelm", spr_leatherhelm);
             clickSlot(i, "testt", spr_testt);
             clickSlot(i, "broadsword", spr_broadsword);
             clickSlot(i, "ironhelm", spr_ironhelm);
             clickSlot(i, "ironchest", spr_ironchest);
             clickSlot(i, "bloodmail", spr_bloodmail);
             clickSlot(i, "robe", spr_robe);
             clickSlot(i, "magehat", spr_magehat);
             clickSlot(i, "mageboots", spr_mageboots);
             clickSlot(i, "staff", spr_staff);
             clickSlot(i, "basicsword", spr_basicsword);
         }          
  }
  
  //dragging the item around
  if(mouse_check_button(mb_left)){
    draw_sprite(spr, 0, mouse_x-8, mouse_y-8);  
  }
}

//splitting an item into 2 piles
for(i = 0; i < totalSlots; i++){
  if(mouse_check_button_pressed(mb_right)){
        if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
             splitInv(i, "ironsword", spr_ironsword);
             splitInv(i, "leatherchest", spr_leatherchest);
             splitInv(i, "leatherboots", spr_leatherboots);
             splitInv(i, "ironboots", spr_ironboots);
             splitInv(i, "hatchet", spr_hatchet);
             splitInv(i, "leatherhelm", spr_leatherhelm);
             splitInv(i, "testt", spr_testt);
             splitInv(i, "broadsword", spr_broadsword);
             splitInv(i, "ironhelm", spr_ironhelm);
             splitInv(i, "ironchest", spr_ironchest);
             splitInv(i, "bloodmail", spr_bloodmail);
             splitInv(i, "robe", spr_robe);
             splitInv(i, "magehat", spr_magehat);
             splitInv(i, "mageboots", spr_mageboots);
             splitInv(i, "staff", spr_staff);
             splitInv(i, "basicsword", spr_basicsword);
         }          
  }
  
  //dragging the item around
  if(mouse_check_button(mb_left)){
    draw_sprite(spr, 0, mouse_x-8, mouse_y-8);  
  }
}

//releasing the mouse for when editing the objects
if(mouse_check_button_released(mb_left))
{
  for(i = 0; i < totalSlots; i++)
  {    
        var startX = view_xview[0]+66;
        var startY = view_yview[0]+44;
        var width = 352;
        var height = 188;
        
       var mouseX = floor(mouse_x/64)*64;
       var mouseY = floor(mouse_y/64)*64
        
        //release object from inventory
        if(!mouseOver(startX, startY, width, height) && oInventory.canDraw)
        {
             releaseSlot(0, spr_ironsword, oITEMIronsword);
             releaseSlot(1, spr_leatherchest, oITEMLeatherchest);
             releaseSlot(2, spr_leatherboots, oITEMLeatherboots);
             releaseSlot(3, spr_ironboots, oITEMIronboots);
             releaseSlot(4, spr_hatchet, oITEMHatchet);
             releaseSlot(5, spr_leatherhelm, oITEMLeatherhelm);
             releaseSlot(6, spr_testt, oITEMTestt);
             releaseSlot(7, spr_broadsword, oITEMBroadsword);
             releaseSlot(8, spr_ironhelm, oITEMIronhelm);
             releaseSlot(9, spr_ironchest, oITEMIronchest);
             releaseSlot(10, spr_bloodmail, oITEMBloodmail);
             releaseSlot(11, spr_robe, oITEMRobe);
             releaseSlot(12, spr_magehat, oITEMMagehat);
             releaseSlot(13, spr_mageboots, oITEMMageboots);
             releaseSlot(14, spr_staff, oITEMStaff);
             releaseSlot(15, spr_basicsword, oITEMBasicsword);
        }
  
       if(global.slot[i] == "noone")
       {
           if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight))
           {
               //if all is successful in transferring the items 
              var tempSpr = spr;
              
              if(i == 15 || i == 16 || i == 17 || i == 18) //
              {

              }
              else
              {
                  transferItem(i, "ironsword", spr_ironsword);  
                  transferItem(i, "leatherchest", spr_leatherchest);  
                  transferItem(i, "leatherboots", spr_leatherboots);  
                  transferItem(i, "ironboots", spr_ironboots); 
                  transferItem(i, "hatchet", spr_hatchet);   
                  transferItem(i, "leatherhelm", spr_leatherhelm);
                  transferItem(i, "testt", spr_testt);       
                  transferItem(i, "broadsword", spr_broadsword);
                  transferItem(i, "ironhelm", spr_ironhelm);
                  transferItem(i, "ironchest", spr_ironchest);
                  transferItem(i, "bloodmail", spr_bloodmail);
                  transferItem(i, "robe", spr_robe);
                  transferItem(i, "magehat", spr_magehat);
                  transferItem(i, "mageboots", spr_mageboots);
                  transferItem(i, "staff", spr_staff);
                  transferItem(i, "basicsword", spr_basicsword);
              }

              if(i == 18) //SLOTS THE ITEM BELOW CAN ENTER (Weapons)
              {
                  transferItem(i, "hatchet", spr_hatchet); 
                  transferItem(i, "ironsword", spr_ironsword); 
                  transferItem(i, "broadsword", spr_broadsword);
                  transferItem(i, "staff", spr_staff);
                  transferItem(i, "basicsword", spr_basicsword);
              }

              if(i == 17) //SLOTS THE ITEM BELOW CAN ENTER (Helmet)
              {
                  transferItem(i , "leatherhelm", spr_leatherhelm);
                  transferItem(i, "ironhelm", spr_ironhelm);
                  transferItem(i, "magehat", spr_magehat);
              }
              
              if(i == 16) //SLOTS THE ITEM BELOW CAN ENTER (Chest)
              {
                  transferItem(i, "leatherchest", spr_leatherchest);
                  transferItem(i, "ironchest", spr_ironchest);  
                  transferItem(i, "bloodmail", spr_bloodmail);
                  transferItem(i, "robe", spr_robe);
              }
              
              if(i == 15) //SLOTS THE ITEM BELOW CAN ENTER (Boots)
              {
                   transferItem(i, "leatherboots", spr_leatherboots);  
                   transferItem(i, "ironboots", spr_ironboots);  
                   transferItem(i, "mageboots", spr_mageboots);
              }
              
          }
       }else
       {
           if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight))
           {
              //if all is successful in transferring the items 
              var tempSpr = spr;
                
              //Items that can't enter a equip slots  
              transferItemCurrent(i, "testt", spr_testt);     
              
            }
       }
       
  }
  spr = nosprite; 
}

checkInvCount();

