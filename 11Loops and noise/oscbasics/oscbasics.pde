import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myBzuko;

void setup(){

  oscP5 = new OscP5(this, 5001);
  myBzuko = new NetAddress("127.0.0.1",5001); 
  
 
}
void draw(){

    OscMessage miMensaje = new OscMessage("/posX");
    miMensaje.add(mouseX);
    OscMessage miMensaje2 = new OscMessage("/posY");
    miMensaje2.add(mouseY);
    oscP5.send(miMensaje,myBzuko);
    oscP5.send(miMensaje2,myBzuko);
   
}
