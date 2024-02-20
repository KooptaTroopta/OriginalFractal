int bola = 1;
int hola = 1;
public void setup() {
  size(1000,1000);
  rectMode(CENTER);
}
public void draw() {
  background(0);
  fractal(500,500,600,10,0);
}
public void mouseMoved() {
  bola = (mouseX-200)*95/600+1;
  if (mouseX<200)
  bola = 1;
  if (mouseX>800)
  bola = 100;
}
public void fractal(int x, int y, int s, int r, float c) {
  fill(234.0-(212.0*c/200.0), 128.0-(164.0*c/200.0), 255.0-(115.0*c/200.0));
  translate(x,y);
  rotate(r*PI/360.0);
  rect(s,s,s/2,s/2);
  rotate(-r*PI/360.0);
  translate(-x,-y);
  if (c > 200 || c < 0)
  hola *= -1;
  if (s > 5) {
    fractal(x,y,s-1,r+bola,c+(hola*1));
  }
}
