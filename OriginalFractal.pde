public void setup()
{
  size(1000, 1000);
  background(0);
}
public void draw()
{
  myFractal(500, 500, 100);
}
public void myFractal(int x, int y, int size)
{
  fill(x*0.1*size, y/size/0.1, x*y);
  ellipse(x, y, size, size);
  if (size > 5)
  {
    myFractal(x + (size*2), y, size/2);
    myFractal(x - (size*2), y, size/2);
    myFractal(x, y + (size*2), size/2);
    myFractal(x, y + (size*4), size/4);
    myFractal(x, y - (size*2), size/2);
    myFractal(x, y - (size*4), size/4);
  }
}
