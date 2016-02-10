float loadhighscore()
{
  // reading score from file
  float f = Float.parseFloat(highscore[0]);
  if(score >f)
  {
    changehighscore(f);
  }
  return(f);
  
   
}


void changehighscore(float hscore)
{
    //writing score onto file
    hs = createWriter("highscore.txt");
    hs.println(score);
    hs.flush(); 
    hs.close(); 
}

//displaying score
void showscore()
{
  float h = loadhighscore();
     textAlign(LEFT);
    fill(225);
    textSize(20);
    text("SCORE : "+score, 20, 60);
    
    textAlign(LEFT);
    fill(225);
    textSize(20);
    text("HIGHSCORE"+(int)h, width-170,60);
}