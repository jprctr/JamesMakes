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
  frameRate(6);
  animation1 = new Animation("bs_", 30);
  xpos = 0;
  ypos = 0;
}

void draw() { 
	animation1.display(0, 0);

//---------------------------------------------X - High Notes - Smallest Circle
	
	//42x596 - Bottom Left
	if ((mouseX > 14) && (mouseX < 74)) {
		if ((mouseY > 566) && (mouseY < 626)) {
		soundManager.play('a3');
		noStroke();
		fill(255, 65);
		ellipse(42, 594, 24, 24);
		}
	}
	
	//281x494 - Left Dipper
	if ((mouseX > 230) && (mouseX < 330)) {
		if ((mouseY > 445) && (mouseY < 545)) {
		soundManager.play('g3');
		noStroke();
		fill(255, 65);
		ellipse(278, 492, 40, 40);
		}
	}
	
	//332x505 - Middle Dipper
	if ((mouseX > 276) && (mouseX < 366)) {
		if ((mouseY > 460) && (mouseY < 552)) {
		soundManager.play('e3');
		noStroke();
		fill(255, 65);
		ellipse(322, 506, 36, 36);
		}
	}
	
	//365x514 - Right Dipper
	if ((mouseX > 314) && (mouseX < 404)) {
		if ((mouseY > 474) && (mouseY < 554)) {
		soundManager.play('b3');
		noStroke();
		fill(255, 65);
		ellipse(364, 514, 32, 32);
		}
	}
	
	//439x246 - Middle - Upper Left (Yellow)
	if ((mouseX > 394) && (mouseX < 484)) {
		if ((mouseY > 202) && (mouseY < 292)) {
		soundManager.play('d4');
		noStroke();
		fill(255, 65);
		ellipse(438, 246, 36, 36);
		}
	}
	
	//555x437 - Center
	if ((mouseX > 516) && (mouseX < 596)) {
		if ((mouseY > 398) && (mouseY < 478)) {
		soundManager.play('c3');
		noStroke();
		fill(255, 65);
		ellipse(554, 436, 32, 32);
		}
	}
	
	//849x121 - Top Right - Dim
	if ((mouseX > 814) && (mouseX < 884)) {
		if ((mouseY > 88) && (mouseY < 158)) {
		soundManager.play('c4');
		noStroke();
		fill(255, 65);
		ellipse(850, 120, 28, 28);
		}
	}
	
	//1075x59 - Top Right - Bright
	if ((mouseX > 1030) && (mouseX < 1120)) {
		if ((mouseY > 15) && (mouseY < 105)) {
		soundManager.play('e4');
		noStroke();
		fill(255, 65);
		ellipse(1074, 58, 36, 36);
		}
	}
	
	//1000x522 - Bottom Right
	if ((mouseX > 960) && (mouseX < 1040)) {
		if ((mouseY > 482) && (mouseY < 570)) {
		soundManager.play('f3');
		noStroke();
		fill(255, 65);
		ellipse(1000, 522, 32, 32);
		}
	}
	
	//---------------------------------------------Y - Medium Notes - Medium Circle

		//42x596 - Bottom Left
		if ((mouseX > 0) && (mouseX < 185)) {
			if ((mouseY > 455) && (mouseY <  737)) {
			soundManager.play('a2');
			stroke(255, 135);
			noFill();
			ellipse(42, 594, 180, 180);
			}
		} else {
		soundManager.stop('a2')
		}

		//281x494 - Left Dipper
		if ((mouseX > 75) && (mouseX < 555)) {
			if ((mouseY > 271) && (mouseY < 741)) {
			soundManager.play('g2');
			stroke(255, 135);
			noFill();
			ellipse(278, 492, 300, 300);
			}
			} else {
			soundManager.stop('g2')
			}

		//332x505 - Middle Dipper
		if ((mouseX > 110) && (mouseX < 530)) {
			if ((mouseY > 294) && (mouseY < 718)) {
			soundManager.play('e2');
			stroke(255, 135);
			noFill();
			ellipse(322, 506, 270, 270);
			}
			} else {
			soundManager.stop('e2')
			}

		//365x514 - Right Dipper
		if ((mouseX > 176) && (mouseX < 552)) {
			if ((mouseY > 326) && (mouseY < 702)) {
			soundManager.play('b2');
			stroke(255, 135);
			noFill();
			ellipse(364, 514, 240, 240);
			}
			} else {
			soundManager.stop('b2')
			}

		//439x246 - Middle - Upper Left (Yellow)
		if ((mouseX > 227) && (mouseX < 650)) {
			if ((mouseY > 36) && (mouseY < 458)) {
			soundManager.play('d3');
			stroke(255, 135);
			noFill();
			ellipse(438, 246, 270, 270);
			}
			} else {
			soundManager.stop('d3')
			}

		//555x437 - Center
		if ((mouseX > 368) && (mouseX < 744)) {
			if ((mouseY > 250) && (mouseY < 626)) {
			soundManager.play('c2');
			stroke(255, 135);
			noFill();
			ellipse(554, 436, 240, 240);
			}
			} else {
			soundManager.stop('c2')
			}

		//849x121 - Top Right - Dim
		if ((mouseX > 685) && (mouseX < 1013)) {
			if ((mouseY > 0) && (mouseY < 287)) {
			soundManager.play('c3');
			stroke(255, 135);
			noFill();
			ellipse(850, 120, 210, 210);
			}
			} else {
			soundManager.stop('c3')
			}

		//1075x59 - Top Right - Bright
		if ((mouseX > 864) && (mouseX < 1286)) {
			if ((mouseY > 0) && (mouseY < 271)) {
			soundManager.play('e3');
			stroke(255, 135);
			noFill();
			ellipse(1074, 58, 270, 270);
			}
			} else {
			soundManager.stop('e3')
			}

		//1000x522 - Bottom Right
		if ((mouseX > 812) && (mouseX < 1188)) {
			if ((mouseY > 334) && (mouseY < 710)) {
			soundManager.play('f2');
			stroke(255, 135);
			noFill();
			ellipse(1000, 522, 240, 240);
			}
			} else {
			soundManager.stop('f2')
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
//this ends the animation class
} 
 

