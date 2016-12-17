///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[15] == "leatherboots"){

    global.bootarmor = 1;
    
}

else if(global.slot[15] == "ironboots"){

    global.bootarmor = 2;
    
}

else if(global.slot[15] == "mageboots"){

    global.bootarmor = 1;
    global.bootdex = 2;
}
//For new items, simply copy code above and replace neccessary values




else {
    global.bootstr = 0;
    global.bootdex = 0;
    global.bootint = 0;
    global.bootarmor = 0;
    global.boothp = 0;
    global.bootspd = 0;
    global.bootcrit = 0;

}
