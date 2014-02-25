explosionX = obj_ball_James.x;
explosionY = obj_ball_James.y;
    

        audio_play_sound(snd_asteroid_James, 12, false);  


yDiff = obj_asteroid_James.y - obj_ball_James.y; 
xDiff = obj_asteroid_James.x - obj_ball_James.x;




    //if coming from upper left
    if (sign(xDiff) == 1) and (sign(yDiff) == 1)
    {
       explodeDirection = "upLeft";    
    }
    
    //if coming from upper right
    else if (sign(xDiff) == -1) and (sign(yDiff) == 1)
    {
        explodeDirection = "upRight";
    }
    
    //if coming from lower left
    else if (sign(xDiff) == 1) and (sign(yDiff) == -1)
    {
        explodeDirection = "lowerLeft";
    }
    
    //if coming from lower right
    else if (sign(xDiff) == -1) and (sign(yDiff) == -1)
    {
        explodeDirection = "lowerRight";
    }
    
switch (ballColor)
{
    case "blue":
        part_type_color_mix(obj_asteroid_James.explosion, c_blue, c_aqua);
        part_emitter_region(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter,  obj_asteroid_James.x, obj_ball_James.x , obj_asteroid_James.y,obj_ball_James.y , ps_shape_ellipse, ps_distr_gaussian);
        part_emitter_burst(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter, obj_asteroid_James.explosion, 5);    
        obj_interface_James.powerLevel += 200; 
        whoExploded = "player";
         break;

    case "yellow":
        part_type_color_mix(obj_asteroid_James.explosion, c_olive, c_olive);
        part_emitter_region(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter,  obj_asteroid_James.x, obj_ball_James.x , obj_asteroid_James.y,obj_ball_James.y , ps_shape_ellipse, ps_distr_gaussian);
        part_emitter_burst(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter, obj_asteroid_James.explosion, 5);         
            break;
    
    case "pink":
        part_type_color_mix(obj_asteroid_James.explosion, c_purple, c_purple);
        part_emitter_region(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter,  obj_asteroid_James.x, obj_ball_James.x , obj_asteroid_James.y,obj_ball_James.y , ps_shape_ellipse, ps_distr_gaussian);
        part_emitter_burst(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter, obj_asteroid_James.explosion, 5);  
        obj_interface_James.enemyPowerLevel -= 200;  
        whoExploded = "enemy";      
            break;
    
    case "green":
        part_type_color_mix(obj_asteroid_James.explosion, c_green, c_lime);
        part_emitter_region(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter,  obj_asteroid_James.x, obj_ball_James.x , obj_asteroid_James.y,obj_ball_James.y , ps_shape_ellipse, ps_distr_gaussian);
        part_emitter_burst(obj_asteroid_James.asteroid_explosion,obj_asteroid_James.explosion_emitter, obj_asteroid_James.explosion, 5);        
            break;

}

if (obj_interface_James.powerLevel > 490)
{
    obj_interface_James.powerLevel = 490;
}

if (obj_interface_James.enemyPowerLevel < 535)
{
    obj_interface_James.enemyPowerLevel = 535;
}
    
   
explode = true;

