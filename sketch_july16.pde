/*
@pjs preload="data/136_Forward_0000.gif, 
data/136_Forward_0001.gif,
data/136_Forward_0002.gif,
data/136_Forward_0003.gif,
data/136_Forward_0004.gif,
data/136_Back_0000.gif, 
data/136_Back_0001.gif,
data/136_Back_0002.gif,
data/136_Back_0003.gif,
data/136_Back_0004.gif,
data/136_Left_0000.gif, 
data/136_Left_0001.gif,
data/136_Left_0002.gif,
data/136_Left_0003.gif,
data/136_Left_0004.gif,
data/136_Right_0000.gif, 
data/136_Right_0001.gif,
data/136_Right_0002.gif,
data/136_Right_0003.gif,
data/136_Right_0004.gif";
*/

Animation animation1, animation2, animation3, animation4;
float xpos, ypos;
float drag = 90.0;
float zag = 45.0;

void setup() {
  size(720, 720);
  frameRate(15);
  animation1 = new Animation("136_Forward_", 5);
  animation2 = new Animation("136_Back_", 15);
  animation3 = new Animation("136_Left_", 5);
  animation4 = new Animation("136_Right_", 5);
  xpos = width/2;
  ypos = height/2;
  ps = new ParticleSystem(1, new PVector(mouseX/2,mouseY/2,0));
  smooth();
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

  float zifx = mouseX - xpos;
  if (abs(difx) > 90.0) {
    xpos = xpos + difx/zag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-90,90) + difx/zag;
    xpos = constrain(xpos, 0, height);
      }
  float zify = mouseY - ypos;
  if (abs(dify) > 90.0) {
    ypos = ypos + dify/zag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-90,90) + dify/zag;
    ypos = constrain(ypos, 0, height);
    }

/*
  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
   //  animation3.display(ypos-animation1.getWidth()/2, xpos-animation1.getHeight()/2);
    soundManager.play('xs');
  }
*/
  if ((abs(difx) < 180) && (abs(dify) < 180)) {
    background(0);
    animation2.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
    soundManager.play('zs');
 /* fill(255, 153, 200, trails+25);
  rect(0,0,width,height);
  rad += dir;
  if (rad > maxRad || rad < minRad) {
  	   dir *= -1.0;	
  }
  ps.run();
  ps.addParticle(xpos+zifx/10, ypos+zify/10);
*/
  } else {
	if ((abs(difx) > 600) && (abs(dify) > 600)) {
		background(0);
	   	animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
	} else {
		if (difx > 0) {
			background(0);
	   		animation4.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
		} else {
			background(0);
   			animation3.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
		}
	}
  }


/* from old version


    background(0);
    animation2.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);

  fill(0, trails);
  rect(0,0,width,height);
  rad += dir;
  if (rad > maxRad || rad < minRad) {
  	   dir *= -1.0;	
  }
  ps.run();
  ps.addParticle(xpos+zifx/10, ypos+zify/10);

*/


//  }




    //upper left
    if ((xpos < 240) && (mouseY < 240)) {
    soundManager.play('as');
//  fill(153, 255, 200, trails+25);
//  rect(0,0,width,height);
    }
    //bottom right
    if ((xpos > 480) && (ypos > 480)) {
    soundManager.play('is');
//  fill(153, 200, 255, trails+25);
//  rect(0,0,width,height);
    }
    //bottom left
    if ((xpos < 240) && (ypos > 480)) {
    soundManager.play('bs');
//  fill(0, 139, 69, trails+25);
//  rect(0,0,width,height);
    }
    //upper right
    if ((xpos > 480) && (ypos < 240)) {
    soundManager.play('cs');
//  fill(255, 215, 0, trails+25);
//  rect(0,0,width,height);
    }
    //middle top
    if ((xpos > 240) && (xpos < 480)) {
        if (ypos < 240) {
    soundManager.play('ds');
//  fill(238, 180, 180, trails+25);
//  rect(0,0,width,height);
        }
    }
    //middle bottom
    if ((xpos > 240) && (ypos < 480)) {
        if (ypos > 480) {
    soundManager.play('es');
//  fill(237, 145, 33, trails+25);
//  rect(0,0,width,height);
        }
    }
    //right center
    if ((xpos > 480) && (ypos > 240)) {
        if (ypos < 480) {
    soundManager.play('fs');
//  fill(107, 142, 35, trails+25);
//  rect(0,0,width,height);
        }
    }
    //left center
    if ((xpos < 240) && (ypos > 240)) {
        if (ypos < 480) {
    soundManager.play('gs');
//  fill(0, 104, 139, trails+25);
//  rect(0,0,width,height);
        }
    }
    //center
    if ((xpos > 240) && (ypos > 240)) {
        if ((xpos < 480) && (ypos < 480)) {
    soundManager.play('hs');
//  fill(75, 0, 130, trails+25);
//  rect(0,0,width,height);
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
    int getHeight() {
    return images[0].height;
  }
} 
 
/*
// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 
class ParticleSystem {
  ArrayList particles;    // An arraylist for all the particles
  PVector origin;         // An origin point for where particles are born
 
  ParticleSystem(int num, PVector v) {
    particles = new ArrayList();              // Initialize the arraylist
    origin = v.get();                         // Store the origin point
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin));    // Add "num" amount of particles to the arraylist
    }
  }
  void run() {
    // Cycle through the ArrayList backwards b/c we are deleting
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = (Particle) particles.get(i);
      p.run();
      if (p.dead()) {
        particles.remove(i);
      }
    }
  }
  void addParticle(float x, float y) {
    particles.add(new Particle(new PVector(x,y)));
  }
  // A method to test if the particle system still has particles
  boolean dead() {
    if (particles.isEmpty()) {
      return true;
    } 
    else {
      return false;
    }
  }
}
 
// A simple Particle class
class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  float r;
  float timer;

  // Another constructor (the one we are using here)
  Particle(PVector l) {
    acc = new PVector(0,0,0);
    vel = new PVector(random(-3,3),random(-3,3),0);
    loc = l.get();
    r = rad;
    timer = (25);
	//console.log("timer: "+timer);
  }

  
  void run() {
    update();
    render();
  }
  // Method to update location
  void update() {
    vel.add(acc);
    loc.add(vel);
    timer -= 1.0;
  }

  // Method to display
  void render() {
    ellipseMode(CENTER);
    ellipse(loc.x,loc.y,r,r);
//    noFill();
    fill(153, timer+25);
    stroke(255, timer+25);
  }
  // Is the particle still useful?
  boolean dead() {
    if (timer <= 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}
ParticleSystem ps;
float minRad = (200);
float maxRad = (260);
float trails = (1);
float rad = minRad*1.0;
float dir = 1.0;
*/
