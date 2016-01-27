void setup()
{
  size(600,600,P3D);
  bubble = new Bubbles( 0.01 , 0);
}

Bubbles bubble;

void draw()
{
 background(0);
 
 
 bubble.update();
}