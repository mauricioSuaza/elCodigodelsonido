// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover[] movers = new Mover[20];

void setup() {
  size(640,360);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,4),0,0); 
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0.01,0);
    PVector gravity = new PVector(0,0.1);
    
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
    strokeWeight(0.01);
    if (i>0){
    line(movers[i].position.x,movers[i].position.y,movers[i-1].position.x, movers[i-1].position.y  );
    }
  }

}









