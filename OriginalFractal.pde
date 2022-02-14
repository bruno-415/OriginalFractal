public void setup(){
  size(500,500);
  rectMode(CENTER);
}
public void draw(){
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz) {
  fill(siz, siz, 100);
  rect(x,y,siz,siz); // base case
  if(siz > 10){ // recursive case
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y-siz/2, siz/2);
  }
}
