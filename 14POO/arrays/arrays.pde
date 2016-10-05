PImage[] misImg = new PImage[7];

int i = 0;

void setup(){
  size(800,600);
  
  misImg[0] = loadImage("images/ghost_standing0001.png");
  misImg[1] = loadImage("images/ghost_standing0002.png");
  misImg[2] = loadImage("images/ghost_standing0003.png");
  misImg[3] = loadImage("images/ghost_standing0004.png");
  misImg[4] = loadImage("images/ghost_standing0005.png");
  misImg[5] = loadImage("images/ghost_standing0006.png");
  misImg[6] = loadImage("images/ghost_standing0007.png");
  frameRate(24);

}

void draw(){
  background(120);
  
  if (i>6){
    i = 0;
  }
  
  image(misImg[i],width/2,height/2);
  
  i++;
 

}
