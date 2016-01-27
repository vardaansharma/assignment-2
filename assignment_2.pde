void setup()
{
  size(600,600,P3D);
  
}

void draw()
{
  
   drawbackground();
  
}


int asteroids;

void drawbackground()
{
  background(#2A6CDB);
  
  PVector pos = new PVector(300,300);
  int x = 10;
  int y = 20;
  int z = 40;
  //curve(300, 300, 300 + 5, 300-20, 300 + 5 + 10, 300 - 20 - 10, 300 + 5 + 20 + 10, 300 - 20 - 10 - 5);
  //curve(325, 265, 320, 275, 325, 287, 335, 300);
  
 pushMatrix();
 stroke(0);
 fill(#2A6CDB);
 translate(300,300);
 
 arc( 0,0, 50,50, -PI, -PI/2 );
 arc( 10,-14, 30,15,PI/2,3*(PI/2));
 
 //line(0,-25,-5,-5);
 //line(0,0,14,-14);
 popMatrix();
  
   
}