///THIS IS HOW WE ADD THE VALUES LETS GO BOYS

if(global.slot[18] == "hatchet"){ //DEV WEAPON

    
    global.wepstr = irandom_range(1000,9999);
    global.wepdex = irandom_range(1000,9999);
    global.wepint = irandom_range(1000,9999);
    
}

else if(global.slot[18] == "ironsword"){ //Iron Sword
    
    global.wepstr = 5;
}

else if(global.slot[18] == "basicsword"){ //Dread Blade

    
    global.wepstr = 20;
    global.wepdex = 7;
    global.wepint = 4;
    global.wepcrit = 0.10;
    global.wepspd = 0.1;
    
}

else if(global.slot[18] == "broadsword"){ //Broad Sword

    
    global.wepstr = 8;
    global.wepdex = 5;
    global.wepint = 1;
    
}

else if(global.slot[18] == "staff"){ //Staff

    
    global.wepdex = 2;
    global.wepint = 10;
    
}


else {
   global.wepstr = 0;
   global.wepdex = 0;
   global.wepint = 0;
   global.wepspd = 0;
   global.wepcrit = 0;
}

