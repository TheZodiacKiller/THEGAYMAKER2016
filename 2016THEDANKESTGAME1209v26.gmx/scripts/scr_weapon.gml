///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[18] == "hatchet"){

    
    global.wepstr = 1000;
    global.wepdex = 1000;
    global.wepint = 1000;
    global.atk = global.str * 3 + global.dex * 2 + global.atkbase;
    
}
//For new items, simply copy code above and replace neccessary values




else {
    global.wepstr = 0;
    global.wepdex = 0;
    global.wepint = 0;
    global.atk = global.str * 3 + global.dex * 2 + global.atkbase;
}
