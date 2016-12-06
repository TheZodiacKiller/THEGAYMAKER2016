///updateInv(cellWidth, cellHeight);


var cellWidth = argument0;
var cellHeight = argument1;
for(i = 0; i < totalSlots; i++){ //drawing the item into the correct slot
      drawInvSprite(i, "stone", 0, spr_stone)
      drawInvSprite(i, "wood",  1, spr_wood)
      drawInvSprite(i, "coal",  2, spr_coal)
      drawInvSprite(i, "iron",  3, spr_iron)
      drawInvSprite(i, "hatchet",  4, spr_hatchet)
      drawInvSprite(i, "berry",  5, spr_berry)
      drawInvSprite(i, "testt",  6, spr_testt)
}

    //<----------------------------------------------------------------------------->//

//editing the inventory and managing it
for(i = 0; i < totalSlots; i++){
  if(mouse_check_button_pressed(mb_left)){
        if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
             clickSlot(i, "stone", spr_stone);
             clickSlot(i, "wood", spr_wood);
             clickSlot(i, "coal", spr_coal);
             clickSlot(i, "iron", spr_iron);
             clickSlot(i, "hatchet", spr_hatchet);
             clickSlot(i, "berry", spr_berry);
             clickSlot(i, "testt", spr_testt);
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
             splitInv(i, "stone", spr_stone);
             splitInv(i, "wood", spr_wood);
             splitInv(i, "coal", spr_coal);
             splitInv(i, "iron", spr_iron);
             splitInv(i, "hatchet", spr_hatchet);
             splitInv(i, "berry", spr_berry);
             splitInv(i, "testt", spr_testt);
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
             releaseSlot(0, spr_stone, oITEMStone);
             releaseSlot(1, spr_wood, oITEMWood);
             releaseSlot(2, spr_coal, oITEMCoal);
             releaseSlot(3, spr_iron, oITEMIron);
             releaseSlot(4, spr_hatchet, oITEMHatchet);
             releaseSlot(5, spr_berry, oITEMBerry);
             releaseSlot(6, spr_testt, oITEMTestt);
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
                  transferItem(i, "stone", spr_stone);  
                  transferItem(i, "wood", spr_wood);  
                  transferItem(i, "coal", spr_coal);  
                  transferItem(i, "iron", spr_iron); 
                  transferItem(i, "hatchet", spr_hatchet);   
                  transferItem(i , "berry", spr_berry);
                  transferItem(i, "testt", spr_testt);       
              }

              if(i == 18) //SLOTS THE ITEM BELOW CAN ENTER
              {
                  transferItem(i, "hatchet", spr_hatchet); 
              }

              if(i == 17) //SLOTS THE ITEM BELOW CAN ENTER
              {
                  transferItem(i , "berry", spr_berry);
              }
              
              if(i == 16) //SLOTS THE ITEM BELOW CAN ENTER
              {
                  transferItem(i, "testt", spr_testt);  
              }
              
              if(i == 15) //SLOTS THE ITEM BELOW CAN ENTER
              {

              }
              
          }
       }else
       {
           if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight))
           {
              //if all is successful in transferring the items 
              var tempSpr = spr;
                
              //Items that can't enter a quickslot/equip
              transferItemCurrent(i, "stone", spr_stone);  
              transferItemCurrent(i, "wood", spr_wood);  
              transferItemCurrent(i, "coal", spr_coal);  
              transferItemCurrent(i, "iron", spr_iron); 
              transferItemCurrent(i, "testt", spr_testt);     
              
            }
       }
       
  }
  spr = nosprite; 
}

checkInvCount();

