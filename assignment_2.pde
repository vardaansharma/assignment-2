ArrayList<Bubbles> bubblelist = new ArrayList<Bubbles>();

void setup()
{
  size(600, 600, P3D);
  //bubble = new Bubbles( .009 , (int)random(0,4));
  a = 0;
  c = new center();
  lives = 5;

  menu = false;
}

Bubbles bubble;
center c;
int a;
int lives;

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

    for ( int i = 0; i < bubblelist.size() - 1; ++ i)
    {
      Bubbles b = bubblelist.get(i);
      b.update();
    }

    if (frameCount % 60 == 0)
    {
      Bubbles bubble = bubble = new Bubbles( .009, (int)random(0, 4));
      bubblelist.add(bubble);
    }


    c.make();


    ////////  to remove the bubble and reduce lives ////
    for ( int i = 0; i < bubblelist.size() -1; ++i)
    {
      if (dist(bubblelist.get(i).position.x, bubblelist.get(i).position.y, width/2, height/2) <40)
      {
        bubblelist.remove(i);
        lives-- ;
      }
    }
    // println(lives);

    ////// calling function to show lives 
    showlives();
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
  for (int i = 0; i<bubblelist.size() -1; ++i)
  {
    if ( dist(mouseX, mouseY, bubblelist.get(i).position.x, bubblelist.get(i).position.y) <60)
    {
      bubblelist.remove(i);
    }
  }
}


//function to display the menu
void menu()
{
  
}