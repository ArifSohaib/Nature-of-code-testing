Ball b;
void setup()
{
  b = new Ball();
  size(1280,720);
}

void draw()
{
  b.move();
  b.bounce();
  b.render();

}