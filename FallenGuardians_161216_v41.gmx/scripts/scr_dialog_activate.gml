/// scr_dialog_activate(speaker);

scr_get_input();
speaker = argument[0];
var speakdis = point_direction(o_player.x,o_player.y, argument[0].x, argument[0].y);   
     
        with (speaker) {        //dialog 
            if (!instance_exists(dialog)){
                   // if ther dialog doesnt exist do this           
                dialog = instance_create(x+xoffset, y+yoffset, obj_dialogue);
                dialog.text = text;
                //speadis = point_direction(o_player.x,o_player.y,o_speaker.x,o_speaker.y);
                
                                        
                }else{ //if it does exist
                   
                       
                    dialog.text_page++; //if pressed again add another page
                    dialog.text_count = 0; // if the dialog is adding letters it rsets in the next page                    
                    if (dialog.text_page > array_length_1d(dialog.text)-1)/*|| speakdis < 30*/{
                        with (dialog) {
                            instance_destroy();
                            
                        
                   
                                    }
                                }
                            }
/*with (speaker){                         }
    if instance_exists(dialog) and speakdis < 30{
        with(dialog){
            instance_destroy();
            }
        }
        */
}
    
