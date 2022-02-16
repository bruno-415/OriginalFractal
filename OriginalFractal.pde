public void setup(){
  background(0);
  size(500,500);
  rectMode(CENTER);
  noLoop();
}
public void draw(){
  myFractal(250,250,480);
}
public void mousePressed(){
  redraw();
}
public void myFractal(int x, int y, int siz) {
  //fill(150, siz, 150);
  fill((int)(Math.random()*256),(int)(Math.random()*50),(int)(Math.random()*256));
  ellipse(x,y,siz,siz); // base case
  if(siz > 10){ // recursive case
    int ranNum = (int)(Math.random()*8+2);
    myFractal(x-siz/ranNum, y, siz/2);
    myFractal(x+siz/ranNum, y, siz/2);
    myFractal(x, y+siz/ranNum, siz/2);
    myFractal(x, y-siz/ranNum, siz/2);
  }
}
