class Bubbles extends Objects
{
  
    
  Bubbles( float speed , int p)
  {
    super(p, speed);
    fill( 180, 0 , 0);
    
    
  }
  
  void update()
  {
    println(position.x);
    println(position.y);
    ellipse(position.x, position.y, 60,60); 
    
    float dx = width/2 - position.x;
    position.x += (dx*speed);
    
    float dy = height/2 - position.y;
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
  