Neh[] dod;
BigNeh[] bod;

void setup()
{
  size(1200, 800);
  dod = new Neh[900];
  bod = new BigNeh[3000];
  for (int i=0; i < dod.length; i++)
    dod[i] = new Neh();
  for (int i=0; i < bod.length; i++)
    bod[i] = new BigNeh();
  stroke(10);
}
void draw()
{
  background(0);
  for (int i = 0; i < bod.length; i ++)
  {
    bod[i].show();
    bod[i].move();
  }
  for (int i = 0; i < dod.length; i ++)
  {
    dod[i].show();
    dod[i].move();
  }
}

interface fade
{
  public double sad();
}
class Neh //normal
{
  int s, size, d;
  float px, py, movex, movey;
  Neh() {
    size = (int)(Math.random()*2.1)+1;
    s = 10*size;
    px = 600;
    py = 400;
    d = (int)(Math.random()*4)+1;
    movex = (float)(Math.random()*60)/(2)+1;
    movey = (float)(Math.random()*60)/(2)+1;
  }
  void show() {
    if (d == 4) {
      fill(255, 255, 0);
    }
    if (d == 3) {
      fill(0, 0, 255);
    }
    if (d == 2) {
      fill(0, 255, 0);
    }
    if (d == 1) {
      fill(255, 0, 0);
    }

    ellipse(px, py, s, s);
  }
  void move() {
    if (d == 4) {
      px = px + movex/10;
      py = py + movey/10;
    }
    if (d == 3) {
      px = px - movex/10;
      py = py + movey/10;
    }
    if (d == 2) {
      px = px + movex/10;
      py = py - movey/10;
    }
    if (d == 1) {
      px = px - movex/10;
      py = py - movey/10;
    }
  }
}
class BigNeh //oddball
{
  double myAngle, mySpeed;
  double posx, posy;
  BigNeh()
  {
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    posx = 590+(float)Math.random()*20;
    posy = 390+(float)Math.random()*20;
  }
  void show() {
    fill(0, 0, 165);
    ellipse((float)posx, (float)posy, 9, 9);
  }
  void move() {
    posx = posx + Math.cos(myAngle)*mySpeed;
    posy = posy + Math.cos(myAngle)*mySpeed;
  }
}
