///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[16] == "berry"){

    
    global.helmstr = 9999;
    global.helmdex = 0;
    global.helmint = 0;
    global.atk = global.str * 3 + global.dex * 2 + global.atkbase;
    
}
//For new items, simply copy code above and replace neccessary values




else {
    global.helmstr = 0;
    global.helmdex = 0;
    global.helmint = 0;
    
    global.atk = global.str * 3 + global.dex * 2 + global.atkbase;
}
