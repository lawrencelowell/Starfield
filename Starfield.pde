Duck[] dod;
BigDuck bod;
  
void setup()
{
  size(600, 400);
  dod = new Duck[30];
  for (int i=0; i < dod.length; i++)
  dod[i] = new Duck();
}
void draw()
{
    background(0);
   for (int i = 0; i < dod.length; i ++)
  {
    dod[i].show();
    dod[i].move();
  }
}
class NormalParticle
{
  //your code here
}
interface fade
{
  public double sad();
}
class Duck 
{
  int y,x,movex,movey;
  float px,py;
  Duck(){
    x = 25 + (int)(Math.random()*10);
    y = 15 + (int)(Math.random()*8);
    px = random(width);
    py = random(height);
    movex = (int)(Math.random()*50)-25;
    movey = (int)(Math.random()*50)-25;
  
  }
  void show(){
    ellipse(px,py,x,y);
}
  void move(){
    fill(255,255,180);
    px = px + movex/60;
    py = py + movey/60;
  }
}
class BigDuck //uses inheritance
{
  //your code here
}
