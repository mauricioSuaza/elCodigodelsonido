import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim minim;
AudioPlayer song;
FFT fft;
 
void setup()
{
  size(512, 200);
 
  // always start Minim first!
  minim = new Minim(this);
 
  // specify 512 for the length of the sample buffers
  // the default buffer size is 1024
  song = minim.loadFile("WayOut.mp3",512);
  song.play();
 
  // an FFT needs to know how 
  // long the audio buffers it will be analyzing are
  // and also needs to know 
  // the sample rate of the audio it is analyzing
  fft = new FFT(song.bufferSize(), song.sampleRate());
}
 
void draw()
{
  background(0);
  // first perform a forward fft on one of song's buffers
  // I'm using the mix buffer
  //  but you can use any one you like
  fft.forward(song.mix);
 
  stroke(255, 0, 0, 128);
  // draw the spectrum as a series of vertical lines
  // I multiple the value of getBand by 4 
  // so that we can see the lines better
  for(int i = 0; i < fft.specSize(); i++)
  {
    line(i, height, i, height - fft.getBand(i)*4);
  }
 
}
