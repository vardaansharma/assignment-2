class Bubbles extends Objects
{
  float dx;
  float dy;
  Bubbles()
  {
  }
    
  Bubbles( float speed , int p)
  {
    super(p, speed);
    
    
     dy = height/2 - position.y;
     dx = width/2 - position.x;
  }
  
  void make()
  {
    stroke(225);
    fill(225);
    //ellipse(position.x, position.y, size,size); 
    pushMatrix();
    translate(position.x,position.y);
    //spotLight(0, 0, 225, width/2, height/2, 0, position.x, position.y, 0, PI/4, 2);
    lights();
    rotate(60);
    sphere(size/2);
    popMatrix();
  }
  
  void update()
  { 
    position.x += (dx*speed);
    
    
    position.y += (dy*speed);
  }
  
 
}
  