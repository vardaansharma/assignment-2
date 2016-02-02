class center extends Objects
{
  float rotate;
  void make()
  {
    stroke(0);
    pushMatrix();
    translate(width/2,height/2);
    
    fill(225,0,0);
    
    beginShape();
    vertex(0,-40);
    vertex(10,0);
    vertex(0,40);
    vertex(-10,0);
    rotateZ(rotate);
    endShape();
    
    beginShape();
    vertex(-40,0);
    vertex(0,10);
    vertex(40,0);
    vertex(0,-10);
    rotateZ(rotate);
    endShape();
  
    popMatrix();
  }
  
  
  void update()
  {
    rotate +=0.01;
    println(rotate);
  }
}