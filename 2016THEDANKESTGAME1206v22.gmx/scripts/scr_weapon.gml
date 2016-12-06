///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[18] == "hatchet"){

    global.atk = global.str * 3 + global.dex * 2 + global.atkbase + 100000;

}
//For new items, simply copy code above and replace neccessary values

else {
    global.atk = global.atkbase + global.str * 3 + global.dex * 2;
}
