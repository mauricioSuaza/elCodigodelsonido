
float radius = 0; 
int centX = 250; 
int centY = 150;

void setup(){
  size(500,300); 
  background(255); 
  strokeWeight(1); 
  smooth();
  stroke(0, 30);
  noFill(); 
}

void draw(){
  ellipse(centX,centY,radius*2,radius*2);
  stroke(20, 50, 70);
  float x, y;
  float lastx = -999;
  float lasty = -999;
  for (float ang = 0; ang <= 720; ang += 1) {
  radius += 0.1;
  float rad = radians(ang);
  x = centX + (radius * cos(rad));
  y = centY + (radius * sin(rad)); 
  point(x,y);
  }
 

}



   
