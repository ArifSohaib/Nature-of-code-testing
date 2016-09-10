 class PerlinDots{
   int x;
   int y;
   PerlinDots()
   {
     x = width/2;
     y = height/2;
     t = 0;
   }
  private void increment_T(float val)
  {
    t = t + val;
  }
  void makeDots(int col1, int col2, int col3){
    
    increment_T(0.05);
    float x_perlin = noise(t);
    int x_change = (int)map(x_perlin, 0,1, 0,width);
    float y_perlin = noise(t);
    int y_change = (int)map(y_perlin, 0,1, 0,height);
    //int choice = (int)random(4);
    //if(choice == 0)
    //{
    //  x = x + x_change;
    //}
    //else if(choice == 1)
    //{
    //  x = x-x_change;
    //}
    //else if(choice==2)
    //{
    //  y = y + y_change;
    //}
    //else
    //{
    //  y = y - y_change;
    //}
   
   
    float choice = random(1);
    if(choice<0.3)
    {
      x=x_change;
    }
    else if(choice<0.6)
    {
      y = y_change;
    }
    else
    {
      x = x_change;
      y = y_change;
    }
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);  
    fill(col1-30,col2-30,col3-30);
    ellipse(x, y, 20,20);
    print("x= %d, y=%d\n",x_change,y_change);
    print("\n");

  }
 }