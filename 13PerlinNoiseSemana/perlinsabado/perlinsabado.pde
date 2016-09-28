float t;
void setup(){
  size(600,600);
  noFill();
  t = 0;
  stroke(0.10);
}

void draw(){
  //background(255);
  fill(255,2);
  rect(0,0,width,height);
  //bezier(20,60,mouseX,mouseY,mouseY,mouseX,500,600);
 /* float x1 = width*noise(t);
  float y1 = height*noise(t+5);
  float x2 = width*noise(t+15);
  float y2 = height*noise(t+20);
  float x3 = width*noise(t+25);
  float y3 = height*noise(t+30);
  float x4 = width*noise(t+45);
  float y4 = height*noise(t+12);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  t += 0.001;
  
  float x= width*noise(t+14);
  float y= height*noise(t+25);
  
  ellipse(x,y,80,80);*/
  //saveFrame("####_perlin.png");
  
  /* beginShape();
  for (var i = 0; i < 200; i++) {
    var ang = map(i, 0, 200, 0, TWO_PI);
    var rad = 200 * noise(i * 0.01, t * 0.005);
    var x = rad * cos(ang);
    var y = rad * sin(ang);
    curveVertex(x, y);
  }
  endShape(CLOSE);*/
  
  int r = 80;
  int centX = width/2;
  int centY = height/2;
  pushMatrix();
  translate(centX, centY);
  
  beginShape();
  t+=1;
  for(int ang = 0; ang < 360; ang +=2){
    t+=0.01;
    float thisRadius = r + 80*noise(t); 
    float rad = radians(ang);
    float x = cos(rad) * thisRadius  ;
    float y = sin(rad) * thisRadius  ;
    vertex(x,y);
  
  }
   endShape(OPEN);
  popMatrix();
 
  
  
}
