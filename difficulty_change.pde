void changedifficulty()
{

  if ( frameCount % 180 == 0)
  {
    speed += 0.0001;
  }

  if (frameCount % 420 == 0)
  {
    if ( difficulty < 50)
      difficulty += 5;
  }
}