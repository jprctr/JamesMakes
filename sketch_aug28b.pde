/*
@pjs preload="data/sr_0000.gif, 
data/sr_0001.gif,
data/sr_0002.gif,
data/lr_0000.gif, 
data/lr_0001.gif,
data/lr_0002.gif,
data/bs.jpg";
*/

PImage bg;
Animation animation1, animation2;
float xpos, ypos;
float drag = 10.0;

void setup() {
  size(720, 200);
  frameRate(6);
  animation1 = new Animation("sr_", 3);
  animation2 = new Animation("lr_", 3);
  xpos = width/6;
  bg = loadImage("data/bs.jpg");
}

void draw() { 

	float difx = mouseX - xpos;
	
		if (mousePressed) {
		background(bg);
		xpos = xpos + (int)random(-45, 45);
		animation1.display(xpos-animation1.getWidth()/2, ypos);
	}
	
		if (abs(difx) > 1.0) {
  		xpos = xpos + difx/drag;
  		xpos = constrain(xpos, 0, width);
	}
			if (abs(difx) < 3.0) {
			background(bg);
			animation1.display(xpos-animation1.getWidth()/2, ypos);
		}	else {
				if (abs(difx) > 90.0) {
				background(bg);
				animation1.display(xpos-animation1.getWidth()/2, ypos);
			}	else {
				background(bg);
				animation2.display(xpos-animation1.getWidth()/2, ypos);
			}
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
  }
  
  int getWidth() {
    return images[0].width;
  }
//this ends the animation class
} 
 

