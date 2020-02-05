public void setup()
{
  size(1000,1000);
  background(0);
}
public void draw()
{
  //myFractal(300,300,100);
  //myFractal(300,500,100);
  myFractal(300,500,300);
  //myFractal(500,300,100);
  //myFractal(500,500,100);
}
public void myFractal(int x, int y, int size)
{
  fill(x*0.1*size, y/size/0.1, x*y);
  //stroke(x/3, y/3, x*y);
  ellipse(x, y, size, size);
  if(size > 5)
  {
    myFractal(x + (2*size/2), y, size/2);
    myFractal(x - (size/2), y, size/2);
    myFractal(x, y + (2*size/2), size/2);
    myFractal(x, y - (2*size/2), size/2);
  }   
}
