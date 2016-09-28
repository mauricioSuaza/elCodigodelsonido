float t;
void setup(){
  size(800,600);

   noFill();
   stroke(0);
   strokeWeight(1);
   t = 0;
   frameRate(30);
   
}


void draw(){
  background(255);
 t=0;
 beginShape();
 for(float x=0; x<width; x+=1){
  float y =  ((200*customNoise(t)) + 300)  ;
  float thisx = x + (20*noise(t));
  vertex(thisx,y);
  t += 0.01;
 }
 endShape();
  
}

float customNoise(float t){
  float n =sin(t);
  return n;
}


