/*
@pjs preload="data/ga_0000.gif, 
data/ga_0001.gif,
data/ga_0002.gif,
data/gb_0000.gif, 
data/gb_0001.gif,
data/gb_0002.gif,
data/gc_0000.gif, 
data/gc_0001.gif,
data/gc_0002.gif,
data/grb.gif";
*/

PImage grb;
Animation animation1, animation2, animation3, animation4, animation5, animation6;
float xpos, ypos, axpos, aypos, bxpos, bypos, cxpos, cypos;
float drag = 10.0;

void setup() {
  size(720, 405);
  frameRate(12);
  
  animation1 = new Animation("ga_", 3);
  animation2 = new Animation("gb_", 3);
  animation3 = new Animation("gc_", 3); 
  animation4 = new Animation("ga_", 1);
  animation5 = new Animation("gb_", 1);
  animation6 = new Animation("gc_", 1); 
  
  xpos = width/2;
  ypos = height/2;
  
  axpos = width*0.4;
  aypos = height*0.6;
  
  bxpos = width*0.1;
  bypos = height*0.2;
  
  cxpos = width*0.6;
  cypos = height*-0.01;
  
  grb = loadImage("data/grb.gif");
}

void draw() { 

	float difx = mouseX - xpos;
	float dify = mouseY - ypos;
        
        tint(105, 75, 50, 255);
        background(grb);
        /*
        tint(105, 75, 50, 255);        
        animation2.display(bxpos, bypos);
        tint(105, 75, 50, 255);        
        animation3.display(cxpos, cypos);
        */
if ((((mouseX > axpos) && (mouseX < (axpos + 208))) && ((mouseY > aypos) && (mouseY < (aypos + 208)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation4.display(axpos, aypos);
    soundManager.play('gdb');    
  } else {      
        if (((mouseX > axpos) && (mouseX < (axpos + 208))) && ((mouseY > aypos) && (mouseY < (aypos + 208)))) {
            tint(50, 50, 75, 240);
            animation1.display(axpos, aypos);
	    soundManager.play('gdone');	    
          } else {
            tint(105, 75, 50, 240);
            animation1.display(axpos, aypos);	    
        }
}
        
if ((((mouseX > bxpos) && (mouseX < (bxpos + 334))) && ((mouseY > bypos) && (mouseY < (bypos + 334)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation5.display(bxpos, bypos);
    soundManager.play('gca');   
  } else {              
        if (((mouseX > bxpos) && (mouseX < (bxpos + 334))) && ((mouseY > bypos) && (mouseY < (bypos + 334)))) {
            tint(50, 50, 75, 240);
            animation2.display(bxpos, bypos);
	    soundManager.play('gdone');	   	    
          } else {
            tint(105, 75, 50, 240);
            animation2.display(bxpos, bypos); 
        }        
}
  
if ((((mouseX > cxpos) && (mouseX < (cxpos + 334))) && ((mouseY > cypos) && (mouseY < (cypos + 334)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation6.display(cxpos, cypos);
    soundManager.play('gge');
  } else {   
        if (((mouseX > cxpos) && (mouseX < (cxpos + 334))) && ((mouseY > cypos) && (mouseY < (cypos + 334)))) {
            tint(50, 50, 75, 240);
            animation3.display(cxpos, cypos);
	    soundManager.play('gdone');	  	    
          } else {
            tint(105, 75, 50, 240);
            animation3.display(cxpos, cypos);  
        }
}
        
/*
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
*/
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
  
//this ends the animation class
} 

