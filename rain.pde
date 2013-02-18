Rain [] r = new Rain [10000];

void setup(){
  size(800,400);
  
  pushMatrix();
  float x=0;
  float y=0;
 translate(x,y);
 for (int i = 0; i < r.length; i++) {
  r[i] = new Rain(new PVector (x,y), random(-1,1));
  
}
popMatrix();
}

void draw(){
  background(255);
   
   for (int i = 0; i < r.length; i++) {
  
   PVector gravity = new PVector(0,random(1,10));
   PVector wind = new PVector(random(1,5),random(0.02));
  
  r[i].display();
   r[i].update();
  r[i].applyForce(gravity);
  r[i].applyForce(wind);
 
  r[i].checkEdges();
   }
}
