//if space bar is pressed and player has energy
if keyboard_check(vk_space) and obj_interface_James.powerLevel > 0
{
    //drain energy while holding down space
   obj_interface_James.powerLevel -=1;
   
   //give player charge while holding down space
   obj_interface_James.chargeMeter += 10;
   
   //dont let charge go over the limit
   if  obj_interface_James.chargeMeter >= 446
   {
        obj_interface_James.chargeMeter = 446;
   }
    
   //make the paddle glow
    obj_paddle_player_James.sprite_index = spr_bounce_James;
    
    //let other objects know about the charging
    global.holdGlow = true;
    
    //change the cursor to a crosshair, but not for mouse users it wont work right
    if (global.input != "mouse")
    {
        cursor_sprite = spr_crosshair_James;
        window_set_cursor(cr_none);
    }
    
    if !audio_is_playing(snd_charging_up_James)
    {
        audio_play_sound(snd_charging_up_James, 10, false);  
        
    }
}
else
{
    audio_stop_sound(snd_charging_up_James);
}

if obj_interface_James.powerLevel <= 0 or !keyboard_check(vk_space)
{
    global.holdGlow = false;
    cursor_sprite = -1;
    window_set_cursor(cr_default);
    
    if obj_interface_James.chargeMeter >= 0
    {
        obj_interface_James.chargeMeter -=5;
    }
}

