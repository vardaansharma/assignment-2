class Easy extends Objects 
{
 
  float rot;
  PVector to;
  float dx;
  float dy;
  
  Easy( float speed , int p )
  {
    super(p, speed);
    to = new PVector();
    
    to.x = random(0,width);
    to.y = random(0,height);
    
    dy = to.y - position.y;
     dx = to.x - position.x;
     
  }
  
  
  void make()
  {
    fill(0,225,0);
    pushMatrix();
    translate(position.x,position.y);
    rotate(rot);
    box(size/2);
    popMatrix();
  }
  
  void update()
  {
    rot += 0.1;
    
    position.x += (dx*speed);
    
    
    position.y += (dy*speed);
  }
  
  
}