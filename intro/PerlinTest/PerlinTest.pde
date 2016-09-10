PerlinDots dot;
float t;
void setup()
{
  size(1289,720);
  frameRate(10);
  dot = new PerlinDots();
  t = 0;
}

void draw()
{
  //background(255);
  //fill(0);
  //t = t+0.05;
  //float x = noise(t);
  //x = map(x, 0,1, 0,width);
  //ellipse(x, height/2, 150,150);
  t= t +0.05;
  int col1 = (int)map(noise(t),0,1, 0,255);
  int col2 = (int)map(noise(t),0,1, 0,255);
  int col3 = (int)map(noise(t),0,1, 0,255);
  dot.makeDots(col1, col2, col3);
}