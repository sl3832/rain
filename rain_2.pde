Rain [] r = new Rain [2000];

void setup() {
  size(1200, 800);

  for (int i = 0; i < r.length; i++) {
    //r[i] =  new Rain(new PVector (width/2, 0), 0.7);
    r[i] = new Rain(new PVector (random(width),random(height)), random(0.2, 2));
  }
}

void draw() {
  background(245,206,195);

  for (int i = 0; i < r.length; i++) {

    //PVector gravity = new PVector(0, random(-1, 1)*r[i].mass);
    //PVector wind = new PVector(random(-1, 1)*r[i].mass, 0);

    PVector gravity = new PVector(0, random(0.05));
    PVector wind = new PVector(random(-0.1,0.1), 0);


    r[i].applyForce(wind);
    r[i].applyForce(gravity);
    r[i].display();
    r[i].update();

    r[i].checkEdges();
  }
}

