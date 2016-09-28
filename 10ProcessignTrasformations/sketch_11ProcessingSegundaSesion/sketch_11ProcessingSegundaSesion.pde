import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myBazuko;


float radius = 100; 
int centX = 300; 
int centY = 200;
float ang = 0;
float x, y;

void setup(){
  
  size(600,400);
  strokeWeight(0.1);
  oscP5 = new OscP5(this,5001);
  myBazuko = new NetAddress("127.0.0.1",5001);

}


void draw(){
  
   ang += 1;
   
   float rad = radians(ang);
   x = centX + (radius * cos(rad)); 
   y = centY + (radius * sin(rad)); 
   point(x,y);
  
  pushMatrix();
  // move the origin to the pivot point
  translate(x, y); 
  
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
     
}*/
  

}


