class Ball
{
  PVector location;
  PVector velocity;
  float t;
  
  Ball()
  {
    t = 0;
    location = new PVector(width/2, height/2);
    velocity = new PVector(2.5,-2);
  }
  
  void bounce()
  {
    if(location.x > width || location.x <0)
    {
      velocity.x *= -1;
    }
    if(location.y > height || location.y <0)
    {
      velocity.y *= -1;
    }
  }
  
  void move()
  {
    location.add(velocity);
  }
  
  void render()
  {
    t = t+0.05;
    int col1 = (int)map(noise(t+0.3),0,1, 0,255);
    int col2 = (int)map(noise(t+0.01),0,1, 0,255);
    int col3 = (int)map(noise(t+0.08),0,1, 0,255);
    fill(col1,col2,col3);
    ellipse(location.x, location.y, 25,25);
  }
  
}