int numBalls = 12;
Ball[] balls = new Ball[numBalls];
void setup(){
  size(800,600);
  for(int i = 0; i < numBalls; i++){
  balls[i] = new Ball(random(width), random(height), random(30, 70));
  }

}

void draw(){
  
  for (Ball ball : balls) {
    ball.move();
    ball.display();  
  }

}

class Ball {
  float x,y;
  float diameter;
  float vx = random(-2,2);
  float vy = random(-2,2);
  
  Ball(float xn, float yn, float din){
      x = xn;
      y = yn;
      diameter = din;
  
  }
  
  void display(){
    ellipse(x,y,diameter,diameter); 
  }
  
  void move(){
    x += vx;
    y += vy;
    
  }


}
