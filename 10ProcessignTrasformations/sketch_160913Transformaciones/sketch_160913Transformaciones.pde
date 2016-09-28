import oscP5.*;
import netP5.*;

float ang = 0;
float size = 50;
int crec = 0;

OscP5 oscP5;
NetAddress myBzuko;

void setup(){
  
  size(displayWidth/2,displayHeight/2);

  strokeWeight(0.001);
  oscP5 = new OscP5(this,5001);
  myBzuko = new NetAddress("127.0.0.1",5001);
  
}

void draw(){
  
    fill(255,1);
    rect(0,0,width,height);
  
    ang+=2;
    //stroke(255,0,0);  
    noFill();
    //triangle(80,80,300,300,width/2, height/2);
    //triangle(mouseX-35,mouseY,mouseX,mouseY-35,mouseX+35,mouseY);
    // triangle(mouseX-35,mouseY,mouseX,mouseY+35,mouseX+35,mouseY);
    if (crec==0){
    size++;
    }
    if (crec==1){
    size--;
    }
  
    if (size==200){
    crec=1;
    }
    if (size==50){
    crec=0;
    }
    
   if(mousePressed){
     stroke(255,0,0);
   }else{
     stroke(0);
   }
    
    pushMatrix();
    noFill();
    translate(mouseX,mouseY);
    rotate(radians(ang));
    triangle(0-size,0,0,0-size,0+size,0);
  
    popMatrix();
    
    pushMatrix();
    noFill();
    translate(width-mouseX,mouseY);
    rotate(radians(-ang));
    triangle(0-size,0,0,0-size,0+size,0);
    popMatrix();
    
 
    
    pushMatrix();
    noFill();
    translate(mouseX,height-mouseY);
    rotate(radians(-ang));
    triangle(0-size,0,0,0-size,0+size,0);
    popMatrix();
    
    pushMatrix();
    noFill();
    translate(width-mouseX,height-mouseY);
    rotate(radians(-ang));
    triangle(0-size,0,0,0-size,0+size,0);
    popMatrix();
    
    OscMessage miMensaje = new OscMessage("/nota");
   
    OscMessage miMensaje2 = new OscMessage("/octava");
    
    
    //33, 36, 38,39, 40, 43,  45
    if (  (mouseX>0) &&(mouseX<width/7)){
      miMensaje.add(33);
    } else
     if (  (mouseX>width/7) &&(mouseX<2*width/7)){
       miMensaje.add(36);
    }else
     if (  (mouseX>2*width/7) &&(mouseX<3*width/7)){
       miMensaje.add(38);
    }else
     if (  (mouseX>3*width/7) &&(mouseX<4*width/7)){
       miMensaje.add(39);
    }else
     if (  (mouseX>4*width/7) &&(mouseX<5*width/7)){
       miMensaje.add(40);
    }else
     if (  (mouseX>5*width/7) &&(mouseX<6*width/7)){
        miMensaje.add(43);
    }
    else
     if (  (mouseX>6*width/7) &&(mouseX<width)){
        miMensaje.add(45);
    }
    oscP5.send(miMensaje,myBzuko);
    //oscP5.send(miMensaje2,myBzuko);
    
}
