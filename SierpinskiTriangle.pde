public void setup()
{
  size(400, 400);
  background(0);
  noStroke();
}
public void draw()
{
   background(0);
   sierpinski(0, 400, 400);
   
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 10){
    int e = (int)(Math.random()*4);
    fill((float)Math.random()*200, (float)Math.random()*200, (float)Math.random()*200);
    if (e == 0)
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
