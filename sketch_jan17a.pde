/*
@pjs preload="data/hud_480x320.gif, 
data/cave_960x600.jpg";
*/

int xpos, ypos, x, y;
float difx, dify;
PImage img, hud;

void setup()
  {
    size(480,320);  
//    frameRate(20);
    img = loadImage("cave_960x600.jpg"); // image is 960 x 600
    hud = loadImage("hud_480x320.gif"); //image is 480 x 320
    xpos = width/2;
    ypos = height/2;
  }
  
void draw()
{
  difx = xpos - mouseX;
  dify = ypos - mouseY;

  image(img, -240+difx, -140+dify);
  image(hud, 0, 0);

//  stroke(0,0,0);
//  ellipse(mouseX,mouseY,15,15);
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
      String filename = "data/" + imagePrefix + nf(i, 4) + ".gif";
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
