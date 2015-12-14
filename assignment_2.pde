void setup()
{
  size(600,600);
  
}

void draw()
{
  
   drawbackground();
  
}


int asteroids;

void drawbackground()
{
  background(0);
  
    PVector pos ;
    pos = new PVector( random(0,width) , 0 );
  
    stroke(255);
    fill(255);
    ellipse( pos.x , pos.y , 10,10);
    pos.y++;
   
}