float loadhighscore()
{
  float f = Float.parseFloat(highscore[0]);
  if(score >f)
  {
    changehighscore(f);
  }
  return(f);
  
   
}

void changehighscore(float hscore)
{
    highscore[0] = str(score);
    saveStrings("highscore.csv",highscore);
    
}