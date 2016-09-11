class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;

  float t;
  Mover()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    
    t=0;
  }
  
  void update()
  {

    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void edges()
  {

    if(location.x > width) 
    {
      location.x = width;
      velocity.x *= -1;

    }
    else if(location.x < 0)
    {
      location.x = 0;
      velocity.x *= -1;
    }
    
    if(location.y > height) 
    {
      velocity.y *= -1;
      location.y = height;
    }
    else if(location.y < 0) 
    {
      location.y = 0;
      velocity.y *= -1;
    }

  }
  
  void render()
  {
    int col1 = (int)map(noise(t*0.02),0,1, 0,255);
    int col2 = (int)map(noise(t*0.10),0,1, 0,255);
    int col3 = (int)map(noise(t*0.005), 0,1, 0,255);
    
    fill(col1,col2,col3);
    ellipse(location.x, location.y, 25,25);
  }
  //Newton's 2nd law of motion(the begining)
  void applyForce(PVector force)
  {
    acceleration.add(force);
  }
}