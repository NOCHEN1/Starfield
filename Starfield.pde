Particle[] parts = new Particle[1000];
boolean start = false;
void setup()
{
  size(600,600);
  for(int i = 0; i < parts.length; i++){
    parts[i] = new Particle();
  }
  parts[0] = new OddBallParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++){
    parts[i].show();
    parts[i].move();
  }
}
class Particle
{
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle(){
    myX = myY =300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY, 3.5f, 3.5f);
  }
}

class OddBallParticle extends Particle
{
  OddBallParticle(){
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(255, 191, 0);
  }
  void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY, 20f, 20f);
  }
}
