class Bubbles extends Objects
{
  float dx;
  float dy;
    
  Bubbles( float speed , int p)
  {
    super(p, speed);
    
    
     dy = height/2 - position.y;
     dx = width/2 - position.x;
  }
  
  void make()
  {
    stroke( 180, 0 , 0);
    fill( 180, 0 , 0);
    //ellipse(position.x, position.y, size,size); 
    pushMatrix();
    translate(position.x,position.y);
    rotate(60);
    sphere(size/2);
    popMatrix();
  }
    position.x += (dx*speed);
    
    
    position.y += (dy*speed);
  }
}
  