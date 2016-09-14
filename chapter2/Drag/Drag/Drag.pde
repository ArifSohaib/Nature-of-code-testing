Liquid liquid;
Mover[] movers = new Mover[9];
void setup()
{
  background(255);
  size(1280,720);
  reset();
  liquid = new Liquid(0, height/2, width, height/2, 0.1);
}

void draw()
{
  //background(255);
  liquid.display();
  for(int i=0;i<movers.length;i++)
  {
    if(liquid.contains(movers[i]))
    {
      PVector dragForce = liquid.calculateDrag(movers[i]);
      movers[i].applyForce(dragForce);
    }
    PVector gravity = new PVector(0,0.1*movers[i].mass);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].render();
    movers[i].checkEdges();
   
  }
  fill(0);
  text("click mouse to reset",10,30);
}

void mousePressed()
{
  reset();
}

void reset()
{
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5, 3), 40+i*140, 0);
  }
}