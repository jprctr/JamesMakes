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

Animation animation1;
float xpos, ypos;
float drag = 90.0;
int b, t;

void setup() {
  size(720, 720);
  frameRate(15);
  animation1 = new Animation("PT_ORG_", 15);
  xpos = width/2;
  ypos = height/2;
}

void draw() { 
  float difx = mouseX - xpos;
  if (abs(difx) > 45.0) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-90,90) + difx/drag;
    xpos = constrain(xpos, 0, height);
      }
  float dify = mouseY - ypos;
  if (abs(dify) > 45.0) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-90,90) + dify/drag;
    ypos = constrain(ypos, 0, height);
      }

  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
     animation1.display(ypos-animation1.getWidth()/2, xpos-animation1.getHeight()/2);
    b = #444444;
    t = #330033;
  }
  if (abs(difx) + abs(dify) < 90.0) { 
//  background(45, 45, 45);
//    background(0)
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
//    tint(200, 0, 200);
    b = #444444;
    t = #ff3300;
  } else {
//    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
//    noTint();
    b = #000000;
    t = #FFFFFF;
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
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
    background(b);
    tint(t);
  }

//    if (mousePressed) {
//    background(45, 45, 45);
//    tint(100, 100, 100);
//    }
//    if (abs(difx) + abs(dify) < 90.0) { 
//    background(45, 45, 45);
//    tint(200, 0, 200);
//  } else {
//    background(0);
//    noTint();
//  }

  
  int getWidth() {
    return images[0].width;
  }
    int getHeight() {
    return images[0].height;
  }
  
}
