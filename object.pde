class object
{
  PVector position;
  float radius;
  float speed;
  
  // the intial position for bubbles
  object(float pos , boolean x)
  {
    this.radius = 60;
    this.position = new Pvector;
    
    if(x)
    {
      position.x = width + radius;
      position.y = random(0,height);
    }
    else
    {
      position.y = height + radius;
      position.x = random(0,width);
    }
    
      
    
  }