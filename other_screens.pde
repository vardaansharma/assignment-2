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
  objectlist = new ArrayList<Objects>();
  score = 0;
}



float xpos;
float ypos;

void showinstruction(float x, float y)
{
  
  background(0);
  stroke(225);
  fill(225);
  textAlign(CENTER);
  textSize(70);
  text("INSTURCTIONS", width/2, height/6);
  textAlign(LEFT);
  textSize(20);
  text("click in the white balls before they reach the black hole",0, height/3);
  //showdemo( width/3,height/3 + 60);
  text("click on the cubes to slow the difficulty", 0, 3.5*(height/6));
  text("HINT : the difficulty increases with time, so keep \ncollecting cubes",0,5*(height/6));
  text("press the space bar to play ", 0, height -20);
  
  ellipse(xpos,y, 40,40);
  xpos++;
  
  if( xpos == width-(width/3) )
  {
    xpos = x;
  }
  
  center temp = new center();
  temp.update(width-(width/3), y);
  
  stroke(225);
  fill(0,225,0);
  pushMatrix();
  translate(width/3,3.5*(height/6) + 60);
  box(50);
  popMatrix();
  
  fill(0,0,225);
  pushMatrix();
  translate(2*(width/3),3.5*(height/6) + 60);
  box(50);
  popMatrix();
  
  
  if ( keyPressed )
  {
    if ( key == ' ')
    {
      lives =5;
      difficulty = 1;
      menu =!menu;
      instruction = false;
    }
  }
  
}