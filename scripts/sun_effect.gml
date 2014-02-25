// if ball traveling left to right
if sign(hsp) == 1
{
    //if balls intended path takes it underneath the sun
    if (sign(orbitDirection) == -1)
    {
        //dont start curving down until ball is near enough to sun
        if (x + 2 *  hsp > obj_sun_James.x)
        {
            //start curving up
             vsp-=(abs(hsp * 0.15));
        }
        //else if the ball never really gets that close to the sun
       // else if (orbitDirection < -80)
       // {
            //start curve down right away
          //  vsp-=(abs(hsp * 0.15));
        //}  
    }
    //else if balls intended path takes it overtop the sun
    else if (sign(orbitDirection) == 1)
    {
        //dont start curving down until ball is near enough to sun
        if (x + 2 * hsp > obj_sun_James.x)
        {
            //start curving down
            vsp+=(abs(hsp * 0.15));
        }
        //else if the ball never really gets that close to the sun
         //else if (orbitDirection > 80)
       // {
            //start curve down right away
        //    vsp+=(abs(hsp * 0.15));
       // } 
    }  
}

//if ball traveling right to left
//do whats in the comments above
if sign(hsp) == -1
{
    if (sign(orbitDirection) == -1)
    {
        if (x + 2 *  hsp < obj_sun_James.x)
        {
             vsp-=(abs(hsp * 0.15));
        }
       // else if (orbitDirection < -80)
       // {
         //   vsp-=(abs(hsp * 0.15));
       // }
  
    }
    
    else if (sign(orbitDirection) == 1)
    {
        if (x + 2 *  hsp < obj_sun_James.x)
        {
            vsp+= (abs(hsp * 0.15));
        }
       //  else if (orbitDirection > 80)
      //  {
       //     vsp+=(abs(hsp * 0.15));
       // } 
    }  
}

/*
if abs(vsp) > 0
{
    vsp -= 3*sign(vsp);
}

if abs(hsp) > 0
{
    hsp -= 3*sign(hsp);
}
   */  

/*
var xDiff = obj_sun_James.y - (obj_ball_James.y+ vsp * 2); 
var yDiff = obj_sun_James.x - (obj_ball_James.x+ hsp * 2);


if (obj_ball_James.x > obj_sun_James.x)
{
    //if coming from upper left
    if (sign(xDiff) == 1) and (sign(yDiff) == 1)
    {
       // y+= 15;
        vsp-=3;
        
       //obj_ball_James.angle = -2.18;
    }
    
    //if coming from upper right
     else if (sign(xDiff) == -1) and (sign(yDiff) == 1)
    {
        //y+= 15;
        vsp-=3;
        //obj_ball_James.angle = -0.785;
    }
    
    //if coming from lower left
    else if (sign(xDiff) == 1) and (sign(yDiff) == -1)
    {
        //y-= 15;
        //if abs(y - obj_sun_James.y < 20)
        vsp+=3;
        //obj_ball_James.angle = -3.92;
       // else
        //vsp-=5;
    }
    
    //if coming from lower right
    else if (sign(xDiff) == -1) and (sign(yDiff) == -1)
    {
        //y-= 15;
        vsp+=3;
        
         //obj_ball_James.angle = -5.5;
    }
 }
 */
 
/* if (obj_ball_James.x < obj_sun_James.x) and (sign(hsp) = -1)
 {
     //if coming from upper left
    if (sign(xDiff) == 1) and (sign(yDiff) == 1)
    {
      // y+= 15;
        vsp-=3;
        
       //obj_ball_James.angle = -2.18;
    }
    
    //if coming from upper right
     else if (sign(xDiff) == -1) and (sign(yDiff) == 1)
    {
        //y+= 15;
        vsp-=3;
        //obj_ball_James.angle = -0.785;
    }
    
    //if coming from lower left
    else if (sign(xDiff) == 1) and (sign(yDiff) == -1)
    {
       //y-= 15;
        vsp+=3;
        //obj_ball_James.angle = -3.92;
        
    }
    
    //if coming from lower right
    else if (sign(xDiff) == -1) and (sign(yDiff) == -1)
    {
        //y-= 15;
        vsp+=3;
    }
 }      
 */
 
 
         //obj_ball_James.angle = -5.5;
 
   
  
//obj_ball_James.step -=1;

 
