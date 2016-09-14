class Liquid
{
  float x, y, l_width, l_height;
  float c;
  Liquid(float x_, float y_, float w_, float h_, float c_)
  {
    this.x = x_;
    this.y = y_;
    this.l_width = w_;
    this.l_height = h_;
    this.c = c_;
  }
  
  void display() {
    noStroke();
    fill(50);
    rect(x, y, l_width, l_height);
  }
  
  PVector calculateDrag(Mover m)
  {
      PVector drag = m.velocity.get();
      float speed = m.velocity.mag();
      drag.normalize();
      drag.setMag(-1* speed*speed*this.c);
      return drag;
  }
  
  boolean contains(Mover m)
  {
    PVector l = m.location;
    return l.x > x && l.x < x + l_width && l.y > y && l.y < y + l_height;
  }
}