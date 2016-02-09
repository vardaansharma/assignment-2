void menu()
{
  background(menuimage);
  fill(225, 225, 0, 78);
  textSize(46);
  textAlign(CENTER);
  text("click the spcebar to begin ", width/2, height/2);
  text("click i for instructions ", width/2, height - (height/3));

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
        menu = false;
        instruction = true;
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
  stroke(225);
  fill(225);
  textAlign(CENTER);
  text("INSTURCTIONS", width/2, height/6);
  textSize(20);
  text("click in the white balls before they reach the balck hole",width/2, 3*(height/6));
}