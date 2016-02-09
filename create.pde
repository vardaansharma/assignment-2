void create()
{
    c.update();
    
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