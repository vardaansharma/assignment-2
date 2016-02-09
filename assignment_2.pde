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

    create();

    changedifficulty();

    showlives();


    ////////  collision ////
    for ( int i = 0; i < objectlist.size() -1; ++i)
    {
      Objects temp = objectlist.get(i);
      if ( temp instanceof Bubbles )
      {
        if (dist(objectlist.get(i).position.x, objectlist.get(i).position.y, width/2, height/2) < 60)
        {
          objectlist.remove(temp);
          lives-- ;
        }
      }
    }
  }

  if ( lives == 0)
  {
     gameover();
  }
}




/// mouse oresed function to see if the bubble is clicked on
void mousePressed()
{
  if (menu)
  {

    for ( int i = 0; i < objectlist.size(); ++i)
    {
      objectlist.remove(i);
    }

    menu = !menu;
  } else
  {
    for (int i = 0; i<objectlist.size() -1; ++i)
    {
      Object temp = objectlist.get(i);
      if ( dist(mouseX, mouseY, objectlist.get(i).position.x, objectlist.get(i).position.y) <60)
      {
        objectlist.remove(i);

        if ( temp instanceof Easy )
        {
          if ( speed > 0.004 )
          {
            speed -= 0.0001;
          }
        }
      }
    }
  }
}