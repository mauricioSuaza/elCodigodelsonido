
float t;
float x1, y1, x2, y2, x3, y3, x4, y4;

void setup(){
 size(displayWidth,displayHeight);
 noFill();
 stroke(0,18);
 t=0;
 
}

void draw(){
  
   x1 = width * noise(t);
   y1 = height * noise(t+5);
   x2 = width * noise(t+10);
   y2 = height * noise(t+15);
   x3 = width * noise(t+20);
   y3 = height * noise(t+25);
   x4 = width * noise(t+30);
   y4 = height * noise(t+35);


 
  bezier(30,200,400,30,x3,y3,600,20);
  bezier(400,30,x1,y4,x3,y3,20,600);
   
  
  t += 0.01;
  
  saveFrame("######_bezier.png");
}

