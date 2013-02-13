Rain r;

void setup(){
  size(800,300);
  r = new Rain(new PVector (width/2,0));
}

void draw(){
  background(255);
  
   PVector gravity = new PVector(0,0.01);
   PVector wind = new PVector(0.01,0);
  
  r.display();
  r.applyForce(gravity);
  r.update();
  r.checkEdges();
  
  
}
