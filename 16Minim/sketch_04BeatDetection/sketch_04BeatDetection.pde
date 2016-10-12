import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer song;
AudioInput input;

BeatDetect beat;
float eRadius;
 
void setup()
{
  size(512, 400);
 
  minim = new Minim(this);
   // specify 512 for the length of the sample buffers
  // the default buffer size is 1024
  song = minim.loadFile("WayOut.mp3",512);
  input = minim.getLineIn();
  
  song.play();
  
  beat = new BeatDetect();
  
  ellipseMode(RADIUS);
  eRadius = 20;
}
 
void draw()
{
   background(0);
    stroke(255);
  
  for(int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
  }
  
    beat.detect(song.mix);
    float a = map(eRadius, 20, 80, 60, 255);
    fill(60, 255, 0, a);
    if ( beat.isOnset() ) eRadius = 80;
    ellipse(width/2, height/2, eRadius, eRadius);
    eRadius *= 0.95;
    if ( eRadius < 20 ) eRadius = 20;
  
}
