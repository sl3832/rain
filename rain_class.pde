class Rain {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float mass;


  Rain(PVector loc, float m) {
    mass = m;
    location = loc;
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);

    topspeed = 5;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    acceleration.random2D();
    velocity.limit(topspeed);
    location.add(velocity); 
    acceleration.mult(0);

    //PVector mouse = new PVector(mouseX,mouseY);
    //PVector dir = PVector.sub(mouse, location);

    //acceleration = dir;
    //acceleration.add(dir);
  }

  void display() {
    noStroke();
    fill(32, 184, 242, 50);
    rect(location.x, location.y, mass*2, mass*10);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
}

