/*
@pjs preload="data/w_0000.gif, 
data/w_0001.gif,
data/w_0002.gif,
data/w_0003.gif,
data/w_0004.gif,
data/w_0005.gif";
*/

Animation animation1;
float xpos, ypos;
float drag = 60.0;
float zag = 60.0;

void setup() {
  size(420, 420);
  frameRate(12);
  animation1 = new Animation("w_", 6);
  xpos = width/2;
  ypos = height/2;
  ps = new ParticleSystem(1, new PVector(mouseX/2,mouseY/2,0));
  smooth();
}

void draw() { 
  float difx = mouseX - xpos;
  if (abs(difx) > 30.0) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-30,30) + difx/drag;
    xpos = constrain(xpos, 0, height);
      }
  float dify = mouseY - ypos;
  if (abs(dify) > 30.0) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-30,30) + dify/drag;
    ypos = constrain(ypos, 0, height);
    }

  float zifx = mouseX - xpos;
  if (abs(difx) > 30.0) {
    xpos = xpos + difx/zag;
    xpos = constrain(xpos, 0, width);
      } else {
    xpos = xpos + (int)random(-30,30) + difx/zag;
    xpos = constrain(xpos, 0, height);
      }
  float zify = mouseY - ypos;
  if (abs(dify) > 30.0) {
    ypos = ypos + dify/zag;
    ypos = constrain(ypos, 0, height);
      } else {
    ypos = ypos + (int)random(-30,30) + dify/zag;
    ypos = constrain(ypos, 0, height);
    }



  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
     animation1.display(ypos-animation1.getWidth()/2, xpos-animation1.getHeight()/2);
 //   soundManager.play('xs');
 //   play_multi_sound('a0');
	player.play(0);
//	javascript:playSegment(0.1, 0.5);

  }
  if (abs(difx) + abs(dify) < 60.0) { 
    background(0, 0.1);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
 //   soundManager.play('zs');
 //   play_multi_sound('a10');
 	player.play(1);
//	javascript:playSegment(0.5, 1.0);
        fill(153, 35, 35, 35);
  rect(0,0,width,height);
  rad += dir;
  if (rad > maxRad || rad < minRad) {
  	   dir *= -1.0;	
  }
  ps.run();
  ps.addParticle(xpos+zifx/10, ypos+zify/10);


  } else {
    background(0, 0.1);
    animation1.display(xpos-animation1.getWidth()/2, ypos-animation1.getHeight()/2);
/*
  //Draw Puff #1
        fill(0, 135);
        noStroke();
        ellipse(xpos+zifx/10, ypos+zify/10, 60, 60);

  //Draw Puff
        fill(255, 153);
        noStroke();
        ellipse(xpos+random(-160,160)+zifx/10, ypos+random(-160,160)+zify/10, 60, 60);
*/


  fill(0, trails);
  rect(0,0,width,height);
  rad += dir;
  if (rad > maxRad || rad < minRad) {
  	   dir *= -1.0;	
  }
  ps.run();
  ps.addParticle(xpos+zifx/10, ypos+zify/10);




  }




    //upper left
    if ((xpos < 140) && (ypos < 140)) {
   // soundManager.play('as');
  //    play_multi_sound('a1');
	player.play(2);
//	javascript:playSegment(1.0, 1.5);
  rect(0,0,width,height);
    }
    //bottom right
    if ((xpos > 280) && (ypos > 280)) {
    //soundManager.play('is');
  //  play_multi_sound('a2');
	player.play(3);
//	javascript:playSegment(1.5, 2.0);
  rect(0,0,width,height);
    }
    //bottom left
    if ((xpos < 140) && (ypos > 280)) {
   // soundManager.play('bs');
 //   play_multi_sound('a3');
	player.play(4);
//	javascript:playSegment(2.0, 2.5);
  rect(0,0,width,height);
    }
    //upper right
    if ((xpos > 280) && (ypos < 140)) {
    //soundManager.play('cs');
//    play_multi_sound('a4');
	player.play(5);
//	javascript:playSegment(2.5, 3.0);
  rect(0,0,width,height);
    }
    //middle top
    if ((xpos > 140) && (xpos < 280)) {
        if (ypos < 140) {
    //soundManager.play('ds');
  //  play_multi_sound('a5');
	player.play(6);
//	javascript:playSegment(3.0, 3.5);
  rect(0,0,width,height);
        }
    }
    //middle bottom
    if ((xpos > 140) && (ypos < 280)) {
        if (ypos > 280) {
    //soundManager.play('es');
  //  play_multi_sound('a6');
	player.play(7);
//	javascript:playSegment(3.5, 4.0);
  rect(0,0,width,height);
        }
    }
    //right center
    if ((xpos > 280) && (ypos > 140)) {
        if (ypos < 280) {
    //soundManager.play('fs');
 //   play_multi_sound('a7');
	player.play(8);
//	javascript:playSegment(4.0, 4.5);
  rect(0,0,width,height);
        }
    }
    //left center
    if ((xpos < 140) && (ypos > 140)) {
        if (ypos < 280) {
   // soundManager.play('gs');
  //  play_multi_sound('a8');
	player.play(9);
//	javascript:playSegment(4.5, 5.0);
  rect(0,0,width,height);
        }
    }
    //center
    if ((xpos > 140) && (ypos > 140)) {
        if ((xpos < 280) && (ypos < 280)) {
   // soundManager.play('hs');
 //   play_multi_sound('a9');
	player.play(10);
//	javascript:playSegment(5.0, 5.5);
  rect(0,0,width,height);
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
float minRad = (2);
//200
float maxRad = (4);
//260
float trails = (0);
//1
float rad = minRad*1.0;
float dir = 1.0;



