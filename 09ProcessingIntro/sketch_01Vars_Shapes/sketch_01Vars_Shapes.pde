color c;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress   myRemoteLocation;

void setup() {
  size(displayWidth, 800);
  oscP5 = new OscP5(this,5001);
  myRemoteLocation = new NetAddress("127.0.0.1",5001);
   
}

void draw() {
  
  //background(255);
  fill(255,10);
  rect(0,0,width,height);
  
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  
  c = color(random(30),0,0);
  fill(c);
  ellipse(mouseX, mouseY, 80, 80);
  ellipse(width-mouseX, mouseY, 80, 80);
  ellipse (mouseX, height-mouseY, 80, 80);
  ellipse (width-mouseX, height-mouseY, 80, 80);
  println(mouseX);
  
  OscMessage myMessage = new OscMessage("/posx");   
    
  myMessage.add(mouseX);
  
  oscP5.send(myMessage, myRemoteLocation);
  
}

