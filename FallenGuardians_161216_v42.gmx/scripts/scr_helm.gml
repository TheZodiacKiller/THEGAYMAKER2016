///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[17] == "leatherhelm"){

    global.helmarmor = 1;
    
}

else if(global.slot[17] == "ironhelm"){

    global.helmarmor = 2;
    
}

else if(global.slot[17] == "magehat"){

    global.helmarmor = 1;
    global.helmint = 2;
    
}
//For new items, simply copy code above and replace neccessary values




else {
   global.helmstr = 0;
   global.helmdex = 0;
   global.helmint = 0;
   global.helmarmor = 0;
   global.helmhp = 0;
   global.helmspd = 0;
   global.helmcrit = 0;
}
