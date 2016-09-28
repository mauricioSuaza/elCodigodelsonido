
float t;
void setup(){
  size(800,400);
  
  noFill();
  stroke(0,8);
  

 
}

void draw(){
  float y;
  beginShape();
  for(int x=0; x<800; x++){
   
    y = 300*noise(t);
    vertex(x,y);
    t = t + 0.01;
  }
  endShape();

}
