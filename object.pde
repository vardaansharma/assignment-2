 abstract class Objects
{
  PVector position;
  float size;
  float speed;
  
  
  Objects()
  {
  }
  // the intial position for bubbles
  Objects(int x , float s)
  {
    this.size = 60;
    position = new PVector(0,0);
    
    if(x == 0)
    {
      position.x = width + size;
      position.y = random(0,height + size );
    }
    else if( x== 1)
    {
      position.y = height + size;
      position.x = random(0,width + size);
    }
    else if( x ==2)
    {
      position.x = 0 - size;
      position.y = random(0,height + size);
    }
    else 
    {
      position.y = 0-size;
      position.x = random(0,width + size);
    }  
    this.speed = s;
      
  }
  
  abstract void update();
  abstract void make();
}