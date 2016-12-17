///All drop rates will be placed here
//For new drop rates, copy code below and replace neccessary code
if obj_forestspider and state = forestspider_die {

    if roll(0.0000001) {
        instance_create(x,y,oITEMHatchet);    
    }

    if roll(0.1) {
        instance_create(x,y,oITEMLeatherhelm);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMIronsword);
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherchest);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherboots);    
    } 
        
    if roll(0.02) {
        instance_create(x,y,oITEMBroadsword);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronhelm);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronchest);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronboots);    
    }
    
    if roll(0.001) {
        instance_create(x,y,oITEMBloodmail);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMRobe);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMagehat);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMageboots);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMStaff);    
    }
    if roll(0.001) {
        instance_create(x,y,oITEMBasicsword);    
    }
}
//Orc
else if obj_orc and state = orc_die {

    if roll(0.0000001) {
        instance_create(x,y,oITEMHatchet);     
    }

    if roll(0.1) {
        instance_create(x,y,oITEMLeatherhelm);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMIronsword);
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherchest);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherboots);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMBroadsword);    
    }
        
    if roll(0.02) {
        instance_create(x,y,oITEMIronhelm);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronchest);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronboots);    
    }
    
    if roll(0.001) {
        instance_create(x,y,oITEMBloodmail);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMRobe);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMagehat);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMageboots);    
    }
    if roll(0.009) {
        instance_create(x,y,oITEMStaff);    
    }
    if roll(0.001) {
        instance_create(x,y,oITEMBasicsword);    
    }
}
//Goblin
else if obj_goblin and state = goblin_die {

    if roll(0.0000001) {
        instance_create(x,y,oITEMHatchet);
           
    }

    if roll(0.1) {
        instance_create(x,y,oITEMLeatherhelm);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMIronsword);
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherchest);    
    }
    
    if roll(0.1) {
        instance_create(x,y,oITEMLeatherboots);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMBroadsword);    
    }
        
    if roll(0.02) {
        instance_create(x,y,oITEMIronhelm);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronchest);    
    }
    
    if roll(0.02) {
        instance_create(x,y,oITEMIronboots);    
    }
    
    if roll(0.001) {
        instance_create(x,y,oITEMBloodmail);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMRobe);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMagehat);    
    }
    
    if roll(0.009) {
        instance_create(x,y,oITEMMageboots);    
    }
    if roll(0.009) {
        instance_create(x,y,oITEMStaff);    
    }
    if roll(0.001) {
        instance_create(x,y,oITEMBasicsword);    
    }
}
//Mimic
else if o_mimic and state = mimic_die {

    if roll(0.0000001) {
        instance_create(x,y,oITEMHatchet);
           
    }
    
    if roll(0.07) {
        instance_create(x,y,oITEMBroadsword);    
    }
        
    if roll(0.07) {
        instance_create(x,y,oITEMIronhelm);    
    }
    
    if roll(0.07) {
        instance_create(x,y,oITEMIronchest);    
    }
    
    if roll(0.07) {
        instance_create(x,y,oITEMIronboots);    
    }
    
    if roll(0.03) {
        instance_create(x,y,oITEMBloodmail);    
    }
    
    if roll(0.01) {
        instance_create(x,y,oITEMRobe);    
    }
    
    if roll(0.01) {
        instance_create(x,y,oITEMMagehat);    
    }
    
    if roll(0.01) {
        instance_create(x,y,oITEMMageboots);    
    }
    if roll(0.01) {
        instance_create(x,y,oITEMStaff);    
    }
    if roll(0.003) {
        instance_create(x,y,oITEMBasicsword);    
    }
}
//Spider Queen
else if obj_spiderqueen and state = spiderqueen_die {

    if roll(0.000004) {
        instance_create(x,y,oITEMHatchet);
           
    }


    
    if roll(0.1) {
        instance_create(x,y,oITEMBloodmail);    
    }


}

