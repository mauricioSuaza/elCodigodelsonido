Mover[] movers = new Mover[20];

void setup() {
  size(640,360);
  m = new Mover(); 
  
   for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,4),0,0); 
  }
}

void draw() {
  //background(255);

  //PVector wind = new PVector(0.01,0);
  PVector gravity = new PVector(0,0.1);
  //m.applyForce(wind);
  m.applyForce(gravity);


  m.update();
  m.display();
  m.checkEdges();

}

