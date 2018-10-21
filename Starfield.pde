fac[] dod;
BigNeh[] bod;
SuperbigNeh S;
BigE L;

void setup()
{
  size(1200, 800);
  dod = new Neh[900];
  bod = new BigNeh[3000];
  L = new BigE();
  S = new SuperbigNeh();
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

  if (bod[1].secondc == 80)
  {
    textSize(35);
    fill(255);
    text("Windows :O", 500, 700);
  }
  if (bod[1].secondc > 70)
  {
    textSize(30);
    fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
    text("Much Wow", (float)(Math.random()*1200), (float)(Math.random()*800));
  }
  if (bod[1].secondc > 75)
  {
    textSize(30);
    fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
    text("Very Oddball", (float)(Math.random()*1200), (float)(Math.random()*800));
  }
    L.show();
  L.move();
  S.show();
  S.move();
}
interface fac //particle interface
{
  public void show();
  public void move();
}
class BigE implements fac //oddball particle
{
  float pxe,pye;
  BigE(){
    pye=pxe = 30;
  }
  public void show() {
    fill(255, 90, 0);
    rect(pxe, pye, 105, 105);
  }
  public void move() {
    pye = pye + (float)Math.random()*5-1;
    pxe = pxe + (float)Math.random()*6-2;
    fill(255);
    textSize(20);
    text("ODDBALL" , pxe + 13, pye + 50);
  }
}
class Neh implements fac //normal particle
{
  int s, size, d, counter;
  float px, py, movex, movey;

  Neh() {
    size = (int)(Math.random()*2.1)+1;
    s = 30;
    px = 600;
    py = 400;
    d = (int)(Math.random()*4)+1;
    counter = 0;
    movex = (float)(Math.random()*60)/(2)+1;
    movey = (float)(Math.random()*60)/(2)+1;
  }
  public void show() {
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

    rect(px, py, s, s, 8);
  }
  public void move() {
    if (counter < 78) {
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
      counter = counter + 1;
    }
  }
}
class SuperbigNeh extends BigNeh //jumbo particle
{
  public void show(){
    fill(0,0,105);
    ellipse((float)posx, (float)posy, 55, 55);
    fill(255);
    textSize(20);
    text("J",(float)posx,(float)posy);
  }
}
class BigNeh implements fac // some other particle
{
  double myAngle, mySpeed, secondc;
  double posx, posy;
  BigNeh()
  {
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5.5;
    posx = 600+(float)Math.random()*20;
    posy = 400+(float)Math.random()*20;
    secondc = 1;
  }
 public void show() {
    fill(0, 0, 125);
    ellipse((float)posx, (float)posy, 15, 15);
  }
  public void move() {
    if (secondc < 80) {
      posx = posx + Math.sin(myAngle)*mySpeed;
      posy = posy + Math.cos(myAngle)*mySpeed;
      secondc = secondc +1;
    }
  }
}
