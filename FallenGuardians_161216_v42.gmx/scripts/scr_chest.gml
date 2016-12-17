///THIS IS HOW WE ADD THE VALUES LETS GO BOYS
if(global.slot[16] == "leatherchest"){

    global.chestarmor = 2;
}

else if(global.slot[16] == "ironchest"){

    global.chestarmor = 3;
}

else if(global.slot[16] == "bloodmail"){

    global.chestarmor = 10;
    global.chestdex = 7;
    global.chestint = 5;
}

else if(global.slot[16] == "robe"){

    global.chestarmor = 2;
    global.chestdex = 5;
    global.chestint = 3;
}

//For new items, simply copy code above and replace neccessary values


else {
    global.cheststr = 0;
    global.chestdex = 0;
    global.chestint = 0;
    global.chestarmor = 0;
    global.chesthp = 0;
    global.chestspd = 0;
    global.chestcrit = 0;
}
