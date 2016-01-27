class Objects
{
  PVector position;
  float radius;
  float speed;
  
  // the intial position for bubbles
  Objects(int x , float s)
  {
    this.radius = 60;
    position = new PVector(0,0);
    
    if(x == 1)
    {
      position.x = width + radius;
      position.y = random(0,height);
    }
    else
    {
      position.y = height + radius;
      position.x = random(width/2+40,width);
    }
    
    this.speed = s;
      
    
  }
}