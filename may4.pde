Animation animation1, animation2;
float xpos, ypos;
float drag = 20.0;

void setup() {
  size(720, 720);
  background(0 );
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
    background(0 );
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
      String filename = imagePrefix + nf(i, 4) + ".gif";
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {

 translate(width-mouseX, height-mouseY);
//    translate(mouseX, mouseY);
//    translate(xpos, ypos);
//    float theta = PI*mouseX / width;
    float theta = PI*(pmouseX*pmouseY)/((width*height)/3);
    
    rotate(theta);
  //  translate(xpos, ypos);
  translate(-animation1.getWidth()/2, -animation1.getHeight()/2);
// !!!!! TRY SUBRACTING 360 or WIDTH/HEIGHT /2

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
