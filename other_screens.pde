void menu()
{
  background(menuimage);
  fill(225, 225, 0, 78);
  textSize(46);
  textAlign(CENTER);
  text("click the mouse to begin ", width/2, height/2);

  if ( keyPressed )
  {
    if ( key == ' ')
    {
      lives =5;
      difficulty = 1;
      menu =!menu;
    } else 
    {
      if ( key == 'i')
      {
        showinstructions();
      }
    }
  }
}


void gameover()
{
  menu = true;
  menu();
  fill(225, 225, 0, 78);
  textSize(46);
  textAlign(CENTER);
  text("game over", width/2, height/3);
}

void showinstructions()
{
  background(0);
}