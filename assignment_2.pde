ArrayList<Objects> objectlist = new ArrayList<Objects>();

void setup()
{
  size(600, 600, P3D);
  //bubble = new Bubbles( .009 , (int)random(0,4));
  a = 0;
  c = new center();
  lives = 5;

  menu = true;
  
  menuimage = loadImage("menu.jpg");
  
  difficulty = 1;
  speed = 0.004;
  

}

float speed;
PImage menuimage;
Bubbles bubble;
center c;
int a;
int lives;
int difficulty;

boolean menu;
void draw()
{
  if (menu)
  {
    menu();
  } else
  {
    background(0);
    stroke(255);
    point(300, 300);

    for ( int i = 0; i < objectlist.size() - 1; ++ i)
    {
      Objects b = objectlist.get(i);
      b.make();
      b.update();
    }

    if (frameCount % (60 - difficulty) == 0)
    {
      Bubbles bubble = new Bubbles( speed, (int)random(0, 4));
      objectlist.add(bubble);
    }
    
    if( frameCount % 180 == 0)
    {
      Easy easy = new Easy(speed, (int)random(0,4));
      objectlist.add(easy);
    }
    
    if( frameCount % 180 == 0)
    {
      speed += 0.0005;
    }
    
    if(frameCount % 300 == 0)
    {
     difficulty += 10;
    }

    c.make();
    c.update();

  

    ////////  collision ////
    for ( int i = 0; i < objectlist.size() -1; ++i)
    {
      Objects temp = objectlist.get(i);
      if( temp instanceof Bubbles )
      {
        if (dist(objectlist.get(i).position.x, objectlist.get(i).position.y, width/2, height/2) < 60)
          {
          objectlist.remove(temp);
          lives-- ;
          }
      }
      else 
      {
        println("a");
      }
    }
    // println(lives);

    ////// calling function to show lives 
    showlives();
  }
  
  if ( lives == 0)
  {
    gameover();
  }
}

//// function to show lives 
void showlives()
{
  float size = width/3;
  float x = size;
  float y = 50;
  float xstart = width/2;

  for (int i = 0; i < lives; ++i)
  {

    if ( i == 0 )
    {
      x = width/2;
    } else if ( i% 2 == 0)
    {

      x = (width/2) + ( (size/5) * (i/2) );
    } else
    {
      x = (width/2) - ( (size/5) * ((i/2)+1) );
    }
    pushMatrix();
    stroke(225, 0, 0);
    fill(225, 0, 0);
    translate(x, y);
    beginShape();
    vertex(0, 0);
    bezierVertex(25, -20, 10, 20, 0, 25);
    vertex(0, 0);
    bezierVertex(-25, -20, -10, 20, 0, 25);
    endShape();
    popMatrix();
  }
}


/// mouse oresed function to see if the bubble is clicked on
void mousePressed()
{
  if(menu)
  {
    lives =5;
    difficulty = 1;
    
    for( int i = 0 ; i < objectlist.size(); ++i)
    {
      objectlist.remove(i);
    }
    
    menu = !menu;
  }
  else
  {
    for (int i = 0; i<objectlist.size() -1; ++i)
    {
      if ( dist(mouseX, mouseY, objectlist.get(i).position.x, objectlist.get(i).position.y) <60)
        {
          objectlist.remove(i);
        }
    }
  }
}


//function to display the menu
int x = 0;
void menu()
{
  background(menuimage);
  fill(225,225,0,78);
  textSize(46);
  textAlign(CENTER);
  text("click the mouse to begin ",width/2,height/2);

 
}


void gameover()
{
  menu = true;
  menu();
  text("game over", width/2, height/3);
}