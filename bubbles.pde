class Bubbles extends Objects
{
  float dx;
  float dy;
    
  Bubbles( float speed , int p)
  {
    super(p, speed);
    fill( 180, 0 , 0);
    
     dy = height/2 - position.y;
     dx = width/2 - position.x;
  }
  
  void update()
  {
   // println(position.x);
    //println(position.y);
    stroke(0);
    ellipse(position.x, position.y, 60,60); 
    
    
    position.x += (dx*speed);
    
    
    position.y += (dy*speed);
    /* if( position.x > width/2)
     {
       position.x -= speed;
     }
     else if( position. x < width/2)
     {
       position.x += speed;
     }
     
     if(position.y >height/2)
     {
       position.y -= speed;
     }
     else if( position.y < height/2)
     {
       position.y += speed;
     }
     */
  }
}
  