float t;

void setup(){
  
  size(600,600);
  t = 0 ;
  noFill();
  stroke(0,18);

}

void draw(){
  //background(255);
 
 //bezier(20, 20, mouseX, mouseY, mouseY, mouseX, 500, 300);
  
  float x1 = width * noise(t + 15);
  float x2 = width * noise(t + 25);
  float x3 = width * noise(t + 35);
  float x4 = width * noise(t + 45);
  float y1 = height * noise(t + 55);
  float y2 = height * noise(t + 65);
  float y3 = height * noise(t + 75);
  float y4 = height * noise(t + 85);

  bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  
  t += 0.005;

}
