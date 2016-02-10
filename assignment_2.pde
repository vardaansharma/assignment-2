ArrayList<Objects> objectlist = new ArrayList<Objects>();  // array holding every moving object in the game


void setup()
{
  size(600, 600, P3D);
  //a = 0;
  c = new center();  // object for the center black hole
  lives = 5;

  //for menu and instructions
  menu = true;
  menuimage = loadImage("menu.jpg");
  instruction = false;
  xpos = height/2;
  ypos = width/2;

  //default values setting
  difficulty = 1;
  speed = 0.004;
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
PrintWriter hs;

boolean instruction;
boolean menu;


void draw()
{

  if (menu)
  {
    menu();
  } else if (instruction)
  {
    showinstruction(width/5, height/2);
  } else
  {
    background(0);
    
    showscore();//to show score and high score
    
    create(); // to create each object

    changedifficulty();//to change difficulty

    showlives();//to show lives

    destroy();//collision
  }


  if ( lives == 0)
  {
    gameover();
  }
}




/// mouse presed function to see if the bubble is clicked on
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