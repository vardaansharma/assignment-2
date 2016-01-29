ArrayList<Bubbles> bubblelist = new ArrayList<Bubbles>();

void setup()
{
  size(600,600,P3D);
  //bubble = new Bubbles( .009 , (int)random(0,4));
}

Bubbles bubble;

void draw()
{
  
 background(0);
 stroke(255);
 point(300,300);
 
 for( int i = 0 ; i < bubblelist.size() - 1 ; ++ i)
 {
   Bubbles b = bubblelist.get(i);
   
   b.update();
   
 }
 
 if(frameCount % 10 == 0)
 {
   Bubbles bubble = bubble = new Bubbles( .009 , (int)random(0,4));
   bubblelist.add(bubble);
 }
}