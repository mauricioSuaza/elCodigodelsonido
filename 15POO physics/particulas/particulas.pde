Particle part;

void setup(){
  size(800,600);
  
  part = new Particle(width/2, height/2, 100);
 
}

void draw(){
  
  
  part.update();
  
  part.display();
  
  

}


class Particle {
  float x, y;
  float velX = random(-2,2); 
  float velY = random(-3,3);
  float diameter;
  
  Particle(float posX, float posY, float diam){
    x = posX;
    y = posY;
    diameter = diam;
    
  }
  
  void display(){
    ellipse(x,y,diameter,diameter);
  }
  
  void update(){
    x+=velX;
    y+=velY;  
  }
  
 
    
 

}
