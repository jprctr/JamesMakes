/*
@pjs preload="data/bs_0000.JPG, 
data/bs_0001.JPG,
data/bs_0002.JPG,
data/bs_0003.JPG,
data/bs_0004.JPG,
data/bs_0005.JPG, 
data/bs_0006.JPG,
data/bs_0007.JPG,
data/bs_0008.JPG,
data/bs_0009.JPG,
data/bs_0010.JPG, 
data/bs_0011.JPG,
data/bs_0012.JPG,
data/bs_0013.JPG,
data/bs_0014.JPG,
data/bs_0015.JPG,
data/bs_0016.JPG,
data/bs_0017.JPG,
data/bs_0018.JPG,
data/bs_0019.JPG, 
data/bs_0020.JPG,
data/bs_0021.JPG,
data/bs_0022.JPG,
data/bs_0023.JPG,
data/bs_0024.JPG, 
data/bs_0025.JPG,
data/bs_0026.JPG,
data/bs_0027.JPG,
data/bs_0028.JPG,
data/bs_0029.JPG;
*/

Animation animation1;
float xpos, ypos;

void setup() {
  size(1200, 646);
  frameRate(15);
  animation1 = new Animation("bs_", 30);
  xpos = 0;
  ypos = 0;
}

void draw() { 
	animation1.display(0, 0);

    //upper left
    if ((mouseX < 240) && (mouseY < 240)) {
    soundManager.play('Answer');
    }
    //bottom right
    if ((mouseX > 480) && (mouseY > 480)) {
    soundManager.play('Bullet');
    }
    //bottom left
    if ((mouseX < 240) && (mouseY > 480)) {
    soundManager.play('Circuit');
    }
    //upper right
    if ((mouseX > 480) && (mouseY < 240)) {
    soundManager.play('Danger');
    }
    //middle top
    if ((mouseX > 240) && (mouseX < 480)) {
        if (mouseY < 240) {
    soundManager.play('Earth');
        }
    }
    //middle bottom
    if ((mouseX > 240) && (mouseY < 480)) {
        if (mouseY > 480) {
    soundManager.play('Heaven');
        }
    }
    //right center
    if ((mouseX > 480) && (mouseY > 240)) {
        if (mouseY < 480) {
    soundManager.play('Machine');
        }
    }
    //left center
    if ((mouseX < 240) && (mouseY > 240)) {
        if (mouseY < 480) {
    soundManager.play('Rhythm');
        }
    }
    //center
    if ((mouseX > 240) && (mouseY > 240)) {
        if ((mouseX < 480) && (mouseY < 480)) {
    soundManager.play('Zero');
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
      String filename = "data/" + imagePrefix + nf(i, 4) + ".JPG";
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
 

