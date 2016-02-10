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
    //highscore[0] = str(score);
    hs = createWriter("highscore.txt");
    hs.println(score);
    hs.flush(); 
    hs.close();
   
    //highscore=append(highscore,score);
    //saveStrings("highscore.csv",highscore);
    
}