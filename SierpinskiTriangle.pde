public void setup()
{
  size(1000,1000);
  noLoop();
}
public void draw()
{
  background(255);
  sierpinski(100,100,800,(int)(Math.random()*50));
}
public void mousePressed()//optional
{
  redraw(); 
}
public void sierpinski(int x, int y, int len, int limit) 
{
  if(len <= limit){
    color c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fill(c);
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else{
    sierpinski(x,y,len/2, limit);
    sierpinski(x+len/2,y,len/2, limit);
    sierpinski(x+len/4,y+len/2,len/2, limit);
  }
}
