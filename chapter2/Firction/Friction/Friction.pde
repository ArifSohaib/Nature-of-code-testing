Mover m;
PVector gravity;
PVector wind;
Mover[] movers;
void setup()
{
  size(800,600);
  background(255);
  movers = new Mover[5];
  for(int i=0; i < movers.length; i++)
  {
    movers[i] = new Mover();  
  }
  
  
  wind = new PVector(0.2,0);
}

void draw()
{

  //background(255);
  for (Mover m:movers)
  {
    gravity = new PVector(0,0.3);
    gravity.mult(m.mass);
    m.applyForce(gravity);
    if(mousePressed)
    {
      m.applyForce(wind);
    }
    
    //Get Friction
    PVector friction = m.velocity.get();
    friction.normalize();
    float c= 0.05; //coeficient of friction
    friction.setMag(-1 * c);
    m.applyForce(friction);
    
    m.update();
    m.edges();
    m.render();
  }
  

  
}