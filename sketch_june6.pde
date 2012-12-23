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
float drag = 60.0;

void setup() {
  size(720, 720);
  frameRate(15);
  animation1 = new Animation("PT_ORG_", 15);
  animation2 = new Animation("PT_ORG_", 15);
  xpos = width/2;
  ypos = height/2;
}

void draw() { 
  float difx = mouseX - xpos;
  if (abs(difx) > 90.0) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-90,90) + difx/drag;
    xpos = constrain(xpos, 0, height);
      }
  float dify = mouseY - ypos;
  if (abs(dify) > 90.0) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-90,90) + dify/drag;
    ypos = constrain(ypos, 0, height);
    }

  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
     animation1.display(ypos-animation1.getWidth()/2, xpos-animation1.getHeight()/2);
    soundManager.play('xs');
  }
  if (abs(difx) + abs(dify) < 90.0) { 
    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
    soundManager.play('zs');
  } else {
    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
  }

    //upper left
    if ((xpos < 240) && (mouseY < 240)) {
    soundManager.play('as');
    }
    //bottom right
    if ((xpos > 480) && (ypos > 480)) {
    soundManager.play('is');
    }
    //bottom left
    if ((xpos < 240) && (ypos > 480)) {
    soundManager.play('bs');
    }
    //upper right
    if ((xpos > 480) && (ypos < 240)) {
    soundManager.play('cs');
    }
    //middle top
    if ((xpos > 240) && (xpos < 480)) {
        if (ypos < 240) {
    soundManager.play('ds');
        }
    }
    //middle bottom
    if ((xpos > 240) && (ypos < 480)) {
        if (ypos > 480) {
    soundManager.play('es');
        }
    }
    //right center
    if ((xpos > 480) && (ypos > 240)) {
        if (ypos < 480) {
    soundManager.play('fs');
        }
    }
    //left center
    if ((xpos < 240) && (ypos > 240)) {
        if (ypos < 480) {
    soundManager.play('gs');
        }
    }
    //center
    if ((xpos > 240) && (ypos > 240)) {
        if ((xpos < 480) && (ypos < 480)) {
    soundManager.play('hs');
        }
    }


soundManager.onload = function() {

//  var mySound

soundManager.createSound({
    id: 'as',
    url: '/data/1.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'bs',
    url: '/data/2.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'cs',
    url: '/data/3.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'ds',
    url: '/data/4.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'es',
    url: '/data/5.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'fs',
    url: '/data/6.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'gs',
    url: '/data/7.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'hs',
    url: '/data/8.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'is',
    url: '/data/9.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'zs',
    url: '/data/0.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'xs',
    url: '/data/10.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

  mySound.play();
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
    int getHeight() {
    return images[0].height;
  }
}  

