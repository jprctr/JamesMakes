/*
@pjs preload="data/PT_ORG_0000.gif, 
data/PT_ORG_0001.gif,
data/PT_ORG_0002.gif,
data/PT_ORG_0003.gif,
data/PT_ORG_0004.gif,
data/PT_ORG_0005.gif,
data/PT_ORG_0006.gif,
data/PT_ORG_0007.gif,
data/PT_ORG_0008.gif,
data/PT_ORG_0009.gif,
data/PT_ORG_0010.gif,
data/PT_ORG_0011.gif,
data/PT_ORG_0012.gif,
data/PT_ORG_0013.gif,
data/PT_ORG_0014.gif,
data/PT_ORG_0015.gif";
*/


Animation animation1, animation2;
float xpos, ypos;
float drag = 100.0;

void setup() {
  size(720, 720);
  frameRate(10);
  animation1 = new Animation("PT_ORG_", 15);
  animation2 = new Animation("PT_ORG_", 15);
}

void draw() { 
  float difx = mouseX - xpos;
  if (abs(difx) > 1.0) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width);
  }    
    float dify = mouseY - ypos;
  if (abs(dify) > 1.0) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, width);
  }

  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);    
  } else {
    background(0);
    animation2.display(ypos-(animation1.getWidth()/2), xpos-(animation1.getHeight()/2));
  }
}



// Class for animating a sequence of GIFs

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

  translate(width-mouseX, height-mouseY);
  float theta = PI*(pmouseX*pmouseY)/((width*height)/4);
  rotate(theta);
  translate(-animation1.getWidth()/2, -animation1.getHeight()/2);

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
