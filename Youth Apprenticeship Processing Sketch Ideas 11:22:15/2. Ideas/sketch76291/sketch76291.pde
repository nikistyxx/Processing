/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/76291*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
float y;

void setup()
{
  size(1028,500);
  y = height/2;
  smooth();
  //noLoop();
}

void draw()
{
  background(255);
  noFill();
  stroke(0,100); 

  
  for(int i = 0; i < 100; i+=1.5)
  {
  beginShape();
  vertex(0,height);
  for(int x = 0; x < width; x+=5)
  {
    //noise always return a number between 0,1
   vertex(x,y-i+ (noise(x*.01, (frameCount*.01), i*.01 )*300));
    
  }
  vertex(width, height);
  endShape();
  
  }  
  
}