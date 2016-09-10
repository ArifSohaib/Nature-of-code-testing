import java.util.Random;

Random geneator;

void setup(){
  size(800,600);
  geneator = new Random(); 
}

void draw(){
  background(255);
  float h = ((float)geneator.nextGaussian()*10)+100; //+100 adds a mean of 100 to the random number(originally 0), *10 changes the standard deviation to 10(originally 1)
  fill(0);
  ellipse(width/2,height/2, h,h);
}