class center extends Objects
{
  float theta;
  float radius = 40;
  float smallR = 20;
  float x, y;
  float lastX, lastY;
  float rotate;
  float angle;
  void make()
  {
    stroke(225);

    pushMatrix();
    translate(width/2, height/2);

    for ( int i = 0; i<12; ++i)
    {


      theta = ((TWO_PI)/12 * i ) + angle;
      lastX = x; 
      lastY = y;
      if (i % 2 == 0) 
      {
        x = sin(theta) * radius;
        y = - cos(theta) * radius;
        point(x, y);
        line(lastX, lastY, x, y);
      } else
      {
        x = + sin(theta) * smallR;
        y = - cos(theta) * smallR;
        point(x, y);
        line(lastX, lastY, x, y);
      }
    }

    popMatrix();
  }
  
  void update()
  {
    angle += 0.5;
  }
}