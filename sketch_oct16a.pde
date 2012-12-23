/*
@pjs preload="data/scanphone1_0000.jpg, 
data/scanphone2_0000.jpg";
*/

//PImage scanphone;
Animation animation1, animation2;

float 
xpos, ypos;
//float drag = 10.0;

void setup() {
  size(728, 255);
  frameRate(12);
  background(0);
  
  animation1 = new Animation("scanphone1_", 1);
  animation2 = new Animation("scanphone2_", 1);

  xpos = 0;
  ypos = 0;
}

void draw() { 

	float difx = mouseX - xpos;
	float dify = mouseY - ypos;
        
  
if ((mouseY > 100) && (mouseY < 225)) {       
    animation2.display(xpos, ypos);
  } else {      
    animation1.display(xpos, ypos);
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
  
//this ends the animation class
} 


