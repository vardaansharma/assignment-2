class center
{
  float  spotr, theta, thetainc, offset, larger ; 
  int segs;
  float add;


  center()
  {
    spotr = 1;
    add =0;
    larger=55;
    theta= 0.0f;
    segs = 6;
    thetainc = TWO_PI/segs;
    
  }

  void update( float xpos, float ypos)
  {
    larger=15;
    theta= 0.0f;
    offset = 0;
    
    stroke(0, 0, 225);
    fill(0, 0, 225);
    float x, y;
    for ( int i=0; i < 30; ++i)
    {
      for ( theta = 0; theta<TWO_PI; theta+=thetainc)
      {
        x = xpos + sin(theta+offset - add)*larger;
        y = ypos - cos(theta+offset - add)*larger;
        ellipse(x, y, spotr, spotr);
      }
      offset+=0.05f;
      larger+=1;
    }

    add += 0.01f;
  }
}