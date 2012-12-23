/*
@pjs preload="data/cb_0000.jpg, 
data/cb_0001.jpg,
data/cb_0002.jpg,
data/cb_0003.jpg";
*/

Animation animation1;
float xpos, ypos;

void setup() {
  size(640, 480);
  frameRate(2);
  animation1 = new Animation("cb_", 4);
  xpos = 0;
  ypos = 0;
}

void draw() { 
	animation1.display(0, 0);

//---------------------------------------------X - 5 - 1 Per Rod
	
	//Left - 1
	if ((mouseX > 20) && (mouseX < 180)) {
		if ((mouseY > 220) && (mouseY < 480)) {
		soundManager.play('e1');
		fill(255, 255, 255, 25);
		rect(0,0,width,height);
		}
	}
		
	//Left - 2
        if ((mouseX > 20) && (mouseX < 140)) {
        	if ((mouseY > 100) && (mouseY < 480)) {
        	soundManager.play('e2');
        	fill(255, 200, 100, 25);
        	rect(0,0,width,height);
        	}
        }
	
	//Left - 3
         if ((mouseX > 340) && (mouseX < 410)) {
	    	if ((mouseY > 120) && (mouseY < 480)) {
            	soundManager.play('g1');
            	fill(100, 200, 255, 25);
            	rect(0,0,width,height);
            	}
        }					
	
	//Left - 4
	if ((mouseX > 420) && (mouseX < 520)) {
		if ((mouseY > 16) && (mouseY < 480)) {
		soundManager.play('a1');
		fill(100, 255, 200, 25);
		rect(0,0,width,height);
		}
	}
	
	//Left - 5
	if ((mouseX > 540) && (mouseX < 620)) {
		if ((mouseY > 60) && (mouseY < 480)) {
		soundManager.play('b1');
		fill(100, 100, 200, 25);
		rect(0,0,width,height);
		}
	}
	
//this ends void draw
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
 

