ArrayList<Bubbles> bubblelist = new ArrayList<Bubbles>();

void setup()
{
  size(600,600,P3D);
  //bubble = new Bubbles( .009 , (int)random(0,4));
  a = 0;
  c = new center();
  lives = 400;
}

Bubbles bubble;
center c;
int a;
int lives;
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
 
 if(frameCount % 60 == 0)
 {
   Bubbles bubble = bubble = new Bubbles( .009 , (int)random(0,4));
   bubblelist.add(bubble);
 }
 
 
 c.make();
 
 
////////  to remove the bubble and reduce lives ////
for( int i = 0; i < bubblelist.size() -1 ; ++i)
{
  if(dist(bubblelist.get(i).position.x,bubblelist.get(i).position.y,width/2,height/2) <40)
  {
    bubblelist.remove(i);
    lives-- ;
  }
}
    println(lives);
    
////// calling function to show lives 
showlives();
}

//// function to show lives 
void showlives()
{
  
}

void mousePressed()
{
  for(int i = 0; i<bubblelist.size() -1; ++i)
  {
    if( dist(mouseX, mouseY, bubblelist.get(i).position.x, bubblelist.get(i).position.y) <60)
    {
      bubblelist.remove(i);
    }
  }
}