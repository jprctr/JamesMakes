/* 
@pjs preload="data/PT_ORG_0000.gif"; 
@pjs preload="data/PT_ORG_0001.gif";
@pjs preload="data/PT_ORG_0002.gif";
@pjs preload="data/PT_ORG_0003.gif";
@pjs preload="data/PT_ORG_0004.gif";
@pjs preload="data/PT_ORG_0005.gif";
@pjs preload="data/PT_ORG_0006.gif";
@pjs preload="data/PT_ORG_0007.gif";
@pjs preload="data/PT_ORG_0008.gif";
@pjs preload="data/PT_ORG_0009.gif";
@pjs preload="data/PT_ORG_0010.gif";
@pjs preload="data/PT_ORG_0011.gif";
@pjs preload="data/PT_ORG_0012.gif";
@pjs preload="data/PT_ORG_0013.gif";
@pjs preload="data/PT_ORG_0014.gif";
@pjs preload="data/PT_ORG_0015.gif"; 
*/


int numFrames = 16;  // The number of frames in the animation
int frame = 0;
PImage[] images = new PImage[numFrames];
    
void setup()
{
  size(720, 720);
  background(#000000);
  frameRate(10);
  
  images[0]  = loadImage("data/PT_ORG_0000.gif");
  images[1]  = loadImage("data/PT_ORG_0001.gif"); 
  images[2]  = loadImage("data/PT_ORG_0002.gif");
  images[3]  = loadImage("data/PT_ORG_0003.gif"); 
  images[4]  = loadImage("data/PT_ORG_0004.gif");
  images[5]  = loadImage("data/PT_ORG_0005.gif"); 
  images[6]  = loadImage("data/PT_ORG_0006.gif");
  images[7]  = loadImage("data/PT_ORG_0007.gif"); 
  images[8]  = loadImage("data/PT_ORG_0008.gif");
  images[9]  = loadImage("data/PT_ORG_0009.gif"); 
  images[10] = loadImage("data/PT_ORG_0010.gif");
  images[11] = loadImage("data/PT_ORG_0011.gif"); 
  images[12]  = loadImage("data/PT_ORG_0012.gif");
  images[13]  = loadImage("data/PT_ORG_0013.gif"); 
  images[14] = loadImage("data/PT_ORG_0014.gif");
  images[15] = loadImage("data/PT_ORG_0015.gif"); 
  
  // If you don't want to load each image separately
  // and you know how many frames you have, you
  // can create the filenames as the program runs.
  // The nf() command does number formatting, which will
  // ensure that the number is (in this case) 4 digits.
  //for(int i=0; i<numFrames; i++) {
  //  String imageName = "PT_ORG_" + nf(i, 4) + ".gif";
  //  images[i] = loadImage(imageName);
  //}
} 
 
void draw() 
{ 
  frame = (frame+1) % numFrames;  // Use % to cycle through frames
  image(images[frame], 360-mouseX, 360-mouseY);
}
