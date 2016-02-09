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