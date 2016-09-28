
float radius = 100; 
float centX = 400; 
float centY = 300;
float t;
float t2;


void setup(){
  size(800,600); 
  background(255); 
  strokeWeight(0.1); 
  smooth();
  stroke(0,8);
  noFill(); 
  frameRate(60);
  
  t = 0;
}

void draw(){
  fill(255,4);
  //background(255);
  
  rect(0,0,width,height);
  /*beginShape();
  vertex(width/2, height/2);
  vertex(width/2+50, height/2-100);
  vertex(width/2-50, height/2-100);
  endShape(CLOSE);*/
  ellipse(centX,centY,radius*2,radius*2);
  stroke(0);
  float x, y;
  radius= 200 * noise(t2);
  beginShape();
  
  centX=width*(noise(t2+5));
  centY=height*(noise(t2+15));
  
  for (float ang = 0; ang <= 720; ang += 5) {
  //radius += 0.1;
  float thisRadius = radius + (30*noise(t));
  float rad = radians(ang);
  x = centX + (thisRadius * cos(rad));
  y = centY + (thisRadius * sin(rad)); 
  vertex(x,y);
  t +=0.2;
  }
  endShape();
  println(random(0,1));
  t2 += 0.008;

}

float customNoise(float value) { 
    
    float retValue = pow(sin(value), 3);
    return retValue;
}

