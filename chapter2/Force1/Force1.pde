Mover m;
PVector gravity;
PVector wind;
void setup()
{
  size(800,600);
  //background(255);
  m = new Mover();
  gravity = new PVector(0,0.3);
  wind = new PVector(0.3,0);
}

void draw()
{
  background(255);
  m.render();
  m.applyForce(gravity);
  if(mousePressed)
  {
    m.applyForce(wind);
  }
  m.update();
  m.edges();
}