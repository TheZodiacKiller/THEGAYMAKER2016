//Universal Stats applied after

global.str = global.basestr + global.wepstr + global.helmstr + global.cheststr + global.bootstr;
global.dex = global.basedex + global.wepdex + global.helmdex + global.chestdex + global.bootdex;
global.int = global.baseint + global.wepint + global.helmint + global.chestint + global.bootint;
global.armor = global.basearmor + global.helmarmor + global.chestarmor + global.bootarmor;
global.atk = global.atkbase + global.basestr * 3 + global.basedex * 2 + global.wepatk + global.helmatk + global.chestatk + global.bootatk;
global.atkspd = 1.00 + global.wepspd + global.helmspd + global.chestspd + global.bootspd; //100% base speed on attack frames
global.maxhp = global.basehp + global.helmhp + global.chesthp + global.boothp + global.str*2 +global.vit*5;
global.hpregen = 1.00 + global.vit*0.4; //Need to divide by room_speed (60)
//global.hp = global.maxhp;
global.crit = global.dex*0.01 + 0.1 + global.wepcrit + global.helmcrit + global.chestcrit + global.bootcrit;
global.critdmg = 1.5 + global.wepcritdmg;
global.cdr = global.int * 0.005;

switch (o_characterselect.characterselect) {
    //Elron Cooldowns
    case 1:
        global.maxa_cd = 360 - 360 * global.cdr; //6.00 seconds
        global.maxb_cd = 480 - 480 * global.cdr; //8.00 seconds
        global.maxc_cd = 1800 - 1800 * global.cdr; //20.00 seconds
        break;
        }
