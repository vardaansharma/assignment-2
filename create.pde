void create()
{
    c.update(width/2,height/2);
    
    //making and uodating the objectlist 
    for ( int i = 0; i < objectlist.size() - 1; ++ i)
    {
      Objects b = objectlist.get(i);
      b.make();
      b.update();
    }
  
  
   //creating the bubbles 
   if (frameCount % (60 - difficulty) == 0)
    {
      Bubbles bubble = new Bubbles( speed, (int)random(0, 4));
      objectlist.add(bubble);
    }
    
    
    //creating the green cubes that reduce speed of bubbles
    if( frameCount % 300 == 0)
    {
      Easy easy = new Easy(speed, (int)random(0,4));
      objectlist.add(easy);
    }
    
    
    //creating the blue cubes that reduce the difficulty
    if( frameCount % 300 == 0)
    {
      Difficulty easy = new Difficulty(speed, (int)random(0,4));
      objectlist.add(easy);
    }
}

// collision check function
void destroy()
{
  for ( int i = 0; i < objectlist.size() -1; ++i)
    {
      Objects temp = objectlist.get(i);
      if ( temp instanceof Bubbles )
      {
        if (dist(objectlist.get(i).position.x, objectlist.get(i).position.y, width/2, height/2) < 60)
        {
          objectlist.remove(temp);
          lives-- ;
        }
      }
    }
}