import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer song;
AudioInput input;
FFT fft;

BeatDetect beat;
 
void setup()
{
  size(512, 400);
 
  minim = new Minim(this);
   // specify 512 for the length of the sample buffers
  // the default buffer size is 1024
  song = minim.loadFile("WayOut.mp3",512);
  input = minim.getLineIn();
  
  song.play();
  
  fft = new FFT(512, song.sampleRate());
  
  beat = new BeatDetect();
}
 
void draw()
{
   background(0);
    stroke(255);
  /*
  for(int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 300 + song.left.get(i)*100, i+1, 300 + song.left.get(i+1)*100);
    line(i,  50 + song.right.get(i)*100, i+1, 50+  song.right.get(i+1)*100);
  }*/
  
  fft.forward(song.left);
  //println(fft.specSize());
  strokeWeight(2);
   for(int i = 0; i < fft.specSize(); i++)
    {
      line(i, height, i, height - fft.getBand(i)*4);
    }
    
   
  
  beat.detect(song.mix);
  if (beat.isOnset()){
     ellipse(width/2,height/2,80,80);
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
