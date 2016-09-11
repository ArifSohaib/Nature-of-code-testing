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
    acceleration = new PVector(0.01,0);
    
    t=0;
  }
  
  void update()
  {
    t=t+0.5;
    
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);
    acceleration = mouse.setMag(0.5);
    
    //acceleration=PVector.random2D();
    //float acc_change_x = map(noise(t*0.01),0,1, 0,0.5);
    //float acc_change_y = map(noise(t*0.4),0,1, 0,0.5);
    //acceleration = new PVector(acc_change_x,acc_change_y);
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
  }
  
  void edges()
  {
    if(location.x > width) location.x = 0;
    if(location.x < 0) location.x = width;
    if(location.y > height) location.y = 0;
    if(location.y < 0) location.y = height;
  }
  
  void render()
  {
    int col1 = (int)map(noise(t*0.02),0,1, 0,255);
    int col2 = (int)map(noise(t*0.10),0,1, 0,255);
    int col3 = (int)map(noise(t*0.005), 0,1, 0,255);
    
    fill(col1,col2,col3);
    ellipse(location.x, location.y, 25,25);
  }
}