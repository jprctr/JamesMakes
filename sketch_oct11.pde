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
Animation 
animation1, animation2, animation3, animation4, animation5, animation6,
animation7, animation8, animation9, animation10, animation11, animation12,
animation13, animation14
;

//Audio gC, gD, gE, gF, gG, gA, gD, gdrone;

float 
xpos, ypos, 

axpos, aypos, 
bxpos, bypos, 
cxpos, cypos,

dxpos, dypos, 
expos, eypos, 
fxpos, fypos,

gxpos, gypos

;
float drag = 10.0;

void setup() {
  size(720, 405);
  frameRate(12);
  
  animation1 = new Animation("ga_", 3);
  animation2 = new Animation("ga_", 3);
  animation3 = new Animation("gc_", 3); 
  animation4 = new Animation("ga_", 1);
  animation5 = new Animation("ga_", 1);
  animation6 = new Animation("gc_", 1); 
  
  animation7 = new Animation("ga_", 3);
  animation8 = new Animation("ga_", 3);
  animation9 = new Animation("gc_", 3); 
  animation10 = new Animation("ga_", 1);
  animation11 = new Animation("ga_", 1);
  animation12 = new Animation("gc_", 1); 
  
  animation13 = new Animation("gb_", 3);
  animation14 = new Animation("gb_", 1);
 /* 
  
			var gdrone = new Audio("data/gdrone.mp3");				
			var gC = new Audio("data/gC.mp3");
			var gD = new Audio("data/gD.mp3");
			var gE = new Audio("data/gE.mp3");
			var gF = new Audio("data/gF.mp3");
			var gG = new Audio("data/gG.mp3");
			var gA = new Audio("data/gA.mp3");			
			var gB = new Audio("data/gB.mp3"); 
  */
  xpos = width/2;
  ypos = height/2;
  
  axpos = width*0.6;
  aypos = height*0.01;
  
  bxpos = width*0.6;
  bypos = height*0.5;
  
  cxpos = width*0.8;
  cypos = height*0.03;
  
  dxpos = width*0.1;
  dypos = height*0.5;
  
  expos = width*0.1;
  eypos = height*0.05;
  
  fxpos = width*-0.3;
  fypos = height*0.05;
  
  gxpos = width*0.3;
  gypos = height*0.05;
  
  
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
        /*
        var gdrone = new Audio("data/gdrone.mp3");
	var gC = new Audio("data/gC.mp3");
        var gD = new Audio("data/gD.mp3");
	var gE = new Audio("data/gE.mp3");
	var gF = new Audio("data/gF.mp3");
	var gG = new Audio("data/gG.mp3");
	var gA = new Audio("data/gA.mp3");			
	var gB = new Audio("data/gB.mp3"); 
        */
//2D      
if ((((mouseX > axpos) && (mouseX < (axpos + 208))) && ((mouseY > aypos) && (mouseY < (aypos + 208)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation4.display(axpos, aypos);
//    soundManager.play("gD");    
      gD.play();
//      player.play(1);
  } else {      
        if (((mouseX > axpos) && (mouseX < (axpos + 208))) && ((mouseY > aypos) && (mouseY < (aypos + 208)))) {
            tint(50, 50, 75, 240);
            animation1.display(axpos, aypos);
//	    soundManager.play("gdrone");	
            gdrone.play();
//	    player.play(0);
          } else {         
            tint(105, 75, 50, 240);
            animation1.display(axpos, aypos);	    
        }
}
   
//4F
if ((((mouseX > bxpos) && (mouseX < (bxpos + 208))) && ((mouseY > bypos) && (mouseY < (bypos + 208)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation5.display(bxpos, bypos);
//    soundManager.play("gF");   
      gF.play();
//      player.play(2);
  } else {              
        if (((mouseX > bxpos) && (mouseX < (bxpos + 208))) && ((mouseY > bypos) && (mouseY < (bypos + 208)))) {
            tint(50, 50, 75, 240);
            animation2.display(bxpos, bypos);
//	    soundManager.play("gdrone");	
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation2.display(bxpos, bypos); 
        }        
}
  
//6A
if ((((mouseX > cxpos) && (mouseX < (cxpos + 334))) && ((mouseY > cypos) && (mouseY < (cypos + 334)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation6.display(cxpos, cypos);
//    soundManager.play("gA");
      gA.play();
//      player.play(3);
  } else {   
        if (((mouseX > cxpos) && (mouseX < (cxpos + 334))) && ((mouseY > cypos) && (mouseY < (cypos + 334)))) {
            tint(50, 50, 75, 240);
            animation3.display(cxpos, cypos);
//	    soundManager.play("gdrone");
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation3.display(cxpos, cypos);  
        }
}

//5G
if ((((mouseX > dxpos) && (mouseX < (dxpos + 208))) && ((mouseY > dypos) && (mouseY < (dypos + 208)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation10.display(dxpos, dypos);
//    soundManager.play("gG");
      gG.play();
//      player.play(4);
  } else {      
        if (((mouseX > dxpos) && (mouseX < (dxpos + 208))) && ((mouseY > dypos) && (mouseY < (dypos + 208)))) {
            tint(50, 50, 75, 240);
            animation7.display(dxpos, dypos);
//	    soundManager.play("gdrone");	
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation7.display(dxpos, dypos);	    
        }
}
  
//3E
if ((((mouseX > expos) && (mouseX < (expos + 208))) && ((mouseY > eypos) && (mouseY < (eypos + 208)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation11.display(expos, eypos);
//    soundManager.play("gE"); 
      gE.play();
//      player.play(5);
  } else {              
        if (((mouseX > expos) && (mouseX < (bxpos + 208))) && ((mouseY > eypos) && (mouseY < (eypos + 208)))) {
            tint(50, 50, 75, 240);
            animation8.display(expos, eypos);
//	    soundManager.play("gdrone");	
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation8.display(expos, eypos); 
        }        
}
  
//7B
if ((((mouseX > fxpos) && (mouseX < (fxpos + 334))) && ((mouseY > fypos) && (mouseY < (fypos + 334)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation12.display(fxpos, fypos);
//    soundManager.play("gB");
      gB.play();
//      player.play(6);
  } else {   
        if (((mouseX > fxpos) && (mouseX < (fxpos + 334))) && ((mouseY > fypos) && (mouseY < (fypos + 334)))) {
            tint(50, 50, 75, 240);
            animation9.display(fxpos, fypos);
//	    soundManager.play("gdrone");	  	
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation9.display(fxpos, fypos);  
        }
}
  
//1C
if ((((mouseX > gxpos) && (mouseX < (gxpos + 334))) && ((mouseY > gypos) && (mouseY < (gypos + 334)))) && (mousePressed)) {       
    tint(50, 105, 50, 240);
    animation14.display(gxpos, gypos);
//    soundManager.play("gC");
      gC.play(  );
//      player.play(7);
  } else {   
        if (((mouseX > gxpos) && (mouseX < (gxpos + 334))) && ((mouseY > gypos) && (mouseY < (gypos + 334)))) {
            tint(50, 50, 75, 240);
            animation13.display(gxpos, gypos);
//	    soundManager.play("gdrone");	  	    
            gdrone.play();
//	    player.play(0);
          } else {
            tint(105, 75, 50, 240);
            animation13.display(gxpos, gypos);  
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


