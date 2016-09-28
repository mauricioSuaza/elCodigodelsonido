
float radius = 100; 
int centX = 250; 
int centY = 150;

void setup(){
  
  size(600,400);
  strokeWeight(0.1);

}


void draw(){
  
  pushMatrix();
  // move the origin to the pivot point
  translate(mouseX, mouseY); 
  
  // rotate the grid
  rotate(frameCount / 20.0);
  //scale
  scale(2.0);
  
  // and draw the square at the origin
  noFill();
  triangle(0-20,0,0,0-40,0+20,0);
  popMatrix();
  
  
  //old way to draw a circle
  /*ellipse(centX,centY,radius*2,radius*2);
  
  stroke(20, 50, 70);
  float x, y;
  float lastx = -999;
  float lasty = -999;
  for (float ang = 0; ang <= 360; ang += 5) {
      float rad = radians(ang);
      x = centX + (radius * cos(rad)); 
      y = centY + (radius * sin(rad)); 
      point(x,y);
}*/
  

}


