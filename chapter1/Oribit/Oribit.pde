Mover m;
void setup()
{
  size(800,600);
  //background(255);
  m = new Mover();
}

void draw()
{
  background(255);
  m.render();
  m.update();
  m.edges();
}