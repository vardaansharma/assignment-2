ArrayList<Objects> objectlist = new ArrayList<Objects>();
 
 PrintWriter hs;
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
  instruction = false;

  xpos = height/2;
  ypos = width/2;
  score = 0;
  highscore = loadStrings("highscore.txt");
  
}

float speed;
PImage menuimage;
Bubbles bubble;
center c;
int a;
int lives;
int difficulty;
int score;

String highscore[];

boolean instruction;
boolean menu;
void draw()
{
  float h = loadhighscore();
  println(highscore[0]);
  if (menu)
  {
    menu();
  } else if (instruction)
  {
    showinstruction(width/5, height/2);
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

    textAlign(LEFT);
    fill(225);
    textSize(20);
    text("SCORE : "+score, 20, 60);
    
    if( !menu && !instruction)
  {
    textAlign(LEFT);
    fill(225);
    textSize(20);
    text("HIGHSCORE"+(int)h, width-170,60);
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
  if (!menu && !instruction)
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
        } else if ( temp instanceof Difficulty)
        {
          difficulty -=1;
        } else if ( temp instanceof Bubbles )
        {
          score++;
        }
      }
    }
  }
}