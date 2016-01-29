class Objects
{
  PVector position;
  float radius;
  float speed;
  
  // the intial position for bubbles
  Objects(int x , float s)
  {
    println(x);
    this.radius = 60;
    position = new PVector(0,0);
    
    if(x == 0)
    {
      position.x = width + radius;
      position.y = random(0,height + radius );
    }
    else if( x== 1)
    {
      position.y = height + radius;
      position.x = random(0,width + radius);
    }
    else if( x ==2)
    {
      position.x = 0 - radius;
      position.y = random(0,height + radius);
    }
    else 
    {
      position.y = 0-radius;
      position.x = random(0,width + radius);
    }  
    this.speed = s;
      
    
  }
}