public void myFractal (int y, int x, int size){
  
  myFlower(x, y, size);
    if(size >= 1){
    myFractal(x-size/2, y, size/2);
    myFractal(x+size/2, y, size/2);
  }
}

public void setup(){
  size(500, 500);
  rectMode(CENTER);
}

public void draw(){
  background(255, 182, 193);
  myFractal(250, 250, 480);
}

public void myFlower(int x, int y, int r){
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);

  ellipse(x, y, r, 2*r);
  ellipse(x+5, y+5, r, 2*r);
  ellipse(x+10, y+10, r, 2*r);
  ellipse(x+15, y+15, r, 2*r);
  ellipse(x+20, y+20, r, 2*r);  
}
