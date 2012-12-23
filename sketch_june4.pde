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
float drag = 120.0;

void setup() {
  size(720, 720);
  frameRate(15);
  animation1 = new Animation("PT_ORG_", 15);
  animation2 = new Animation("PT_ORG_", 15);
  xpos = width/2;
  ypos = height/2;

soundManager.onready(function() {

org.init();

soundManager.defaultOptions.autoLoad = false;
soundManager.defaultOptions.stream = true;
soundManager.defaultOptions.autoPlay = true;
soundManager.defaultOptions.multiShot = false;

soundManager.createSound('zS','/data/0.mp3');
soundManager.createSound('aS','/data/1.mp3');
soundManager.createSound('bS','/data/2.mp3');
soundManager.createSound('cS','/data/3.mp3');
soundManager.createSound('dS','/data/4.mp3');
soundManager.createSound('eS','/data/5.mp3');
soundManager.createSound('fS','/data/6.mp3');
soundManager.createSound('gS','/data/7.mp3');
soundManager.createSound('hS','/data/8.mp3');
soundManager.createSound('iS','/data/9.mp3');
soundManager.createSound('xS','/data/10.mp3');

});

}

void draw() { 
  float difx = mouseX - xpos;

  if (abs(difx) > 90.0) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-45,45) + difx/drag;
    xpos = constrain(xpos, 0, height);
      }
  float dify = mouseY - ypos;
  if (abs(dify) > 90.0) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-45,45) + dify/drag;
    ypos = constrain(ypos, 0, height);
    }

  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
//   background(45, 45, 45);
     animation1.display(ypos-animation1.getWidth()/2, xpos-animation1.getHeight()/2);
//    tint(100, 100, 100);
//    soundManager.play('zS');
  }

  if (abs(difx) + abs(dify) < 45.0) { 
//  background(45, 45, 45);
    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
//    tint(200, 0, 200);
//    soundManager.play('xS');
  } else {
    background(0);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
//    noTint();
  }

//xpos sound
  if (xpos == 20.0 || xpos == 40.0 || xpos == 60.0 || xpos == 80.0) { 
    soundManager.play('aS');
  }

  if (xpos == 100.0 || xpos == 120.0 || xpos == 140.0 || xpos == 160.0) { 
    soundManager.play('bS');
  }

  if (xpos == 180.0 || xpos == 200.0 || xpos == 220.0 || xpos == 240.0) { 
    soundManager.play('cS');
  }

  if (xpos == 260.0 || xpos == 280.0 || xpos == 300.0 || xpos == 320.0) { 
    soundManager.play('dS');
  }

  if (xpos == 340.0 || xpos == 360.0 || xpos == 380.0 || xpos == 400.0) { 
    soundManager.play('eS');
  }

  if (xpos == 420.0 || xpos == 440.0 || xpos == 460.0 || xpos == 480.0) { 
    soundManager.play('fS');
  }

  if (xpos == 500.0 || xpos == 520.0 || xpos == 540.0 || xpos == 560.0) { 
    soundManager.play('gS');
  } else {
    }

  if (xpos == 580.0 || xpos == 600.0 || xpos == 620.0 || xpos == 640.0) { 
    soundManager.play('hS');
  }

  if (xpos == 660.0 || xpos == 680.0 || xpos == 700.0 || xpos == 720.0) { 
    soundManager.play('iS');
  }


//ypos sound
  if (ypos == 20.0 || ypos == 40.0 || ypos == 60.0 || ypos == 80.0) { 
    soundManager.play('aS');
  }

  if (ypos == 100.0 || ypos == 120.0 || ypos == 140.0 || ypos == 160.0) { 
    soundManager.play('bS');
  }

  if (ypos == 180.0 || ypos == 200.0 || ypos == 220.0 || ypos == 240.0) { 
    soundManager.play('cS');
  }

  if (ypos == 260.0 || ypos == 280.0 || ypos == 300.0 || ypos == 320.0) { 
    soundManager.play('dS');
  }

  if (ypos == 340.0 || ypos == 360.0 || ypos == 380.0 || ypos == 400.0) { 
    soundManager.play('eS');
  }

  if (ypos == 420.0 || ypos == 440.0 || ypos == 460.0 || ypos == 480.0) { 
    soundManager.play('fS');
  }
  if (ypos == 500.0 || ypos == 520.0 || ypos == 540.0 || ypos == 560.0) { 
    soundManager.play('gS');
  }

  if (ypos == 580.0 || ypos == 600.0 || ypos == 620.0 || ypos == 640.0) { 
    soundManager.play('hS');
  }

  if (ypos == 660.0 || ypos == 680.0 || ypos == 700.0 || ypos == 720.0) { 
    soundManager.play('iS');
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

