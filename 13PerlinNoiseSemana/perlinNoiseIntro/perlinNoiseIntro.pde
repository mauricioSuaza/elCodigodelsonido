float step;
float nx;
void setup(){
  
  size(600,400);
  stroke(0,12);
  noFill();
  

}

void draw(){
  //background(255);
  //fill (255);
  
  float x = random(width);
  //ellipse(x,height/2,40,40);
  
  //stroke(255);
  beginShape();
  
  for (int i = 0; i < width; i++) {
  //float nx = map(i, 0, width, 0, 10);
  float y = height * noise(nx);
  vertex(i, y);
  nx += 0.01;
  }
  endShape();
  
  step+=0.01;
}
