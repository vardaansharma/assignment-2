ArrayList<Bubbles> bubblelist = new ArrayList<Bubbles>();

void setup()
{
  size(600,600,P3D);
  //bubble = new Bubbles( .009 , (int)random(0,4));
  a = 0;
  c = new center();
}

Bubbles bubble;
center c;
int a;
void draw()
{
  
 background(0);
 stroke(255);
 point(300,300);
/* 
 for( int i = 0 ; i < bubblelist.size() - 1 ; ++ i)
 {
   Bubbles b = bubblelist.get(i);
   println(b.position.y);
   b.update();
   
 }
 
 if(frameCount % 20 == 0)
 {
   Bubbles bubble = bubble = new Bubbles( .009 , (int)random(0,4));
   bubblelist.add(bubble);
 }
 */
 
 c.make();
 
for( int i = 0; i < bubblelist.size()
    
}