/*
@pjs preload="data/xytree_0000.jpg, 
data/xytree_0001.jpg";
*/

Animation animation1, animation2, animation3, animation4, animation5, animation6;
int xpos, ypos, x;
float difx, dify;

void setup()
  {
    size(600,480);  
    frameRate(6);
    animation1 = new Animation("xytree_", 2);
    /*
    animation2 = new Animation("bsky_", 2);    
    animation3 = new Animation("csky_", 2);
    animation4 = new Animation("dsky_", 2);
    animation5 = new Animation("esky_", 2);    
    animation6 = new Animation("fsky_", 2);    
    */
    xpos = width/2;
    ypos = height/2;
  }
  
void draw()
{
  
  difx = xpos - (mouseX/2);
  dify = ypos - (mouseY/2);

  animation1.display(-300+difx, -300+dify);  
  
  /*
  background(0); 
  difx = xpos - mouseX;

    //A - 100
  if (mouseX < 100) {  
  animation1.display(0,0);
  }

    //B - 200
  if ((mouseX < 200) && (mouseX > 100)) {  
  animation2.display(0,0);
  }
  
    //C - 300
  if ((mouseX < 300) && (mouseX > 200)) {  
  animation3.display(0,0);
  }  

    //D - 400
  if ((mouseX < 400) && (mouseX > 300)) {  
  animation4.display(0,0);
  }

    //E - 500
  if ((mouseX < 500) && (mouseX > 400)) {  
  animation5.display(0,0);
  }
  
    //F - 600
  if ((mouseX < 600) && (mouseX > 500)) {  
  animation6.display(0,0);
  }
  */

}


class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into four digits
      String filename = "data/" + imagePrefix + nf(i, 4) + ".jpg";
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  }
  
  int getWidth() {
    return images[0].width;
  }
    int getHeight() {
    return images[0].height;
  }
  
} 
