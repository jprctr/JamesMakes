/*
@pjs preload="data/ur.gif, 
data/ll.gif,
data/ul.gif,
data/lr.gif";
*/

PImage ul, ll, ur, lr;
float rr, rg, rb, ra, inverseX, inverseY;

void setup() 
{
  ul = loadImage("data/ul.gif");
  ll = loadImage("data/ll.gif");
  ur = loadImage("data/ur.gif");
  lr = loadImage("data/lr.gif");
  
  size(720, 200); 
  imageMode(CENTER);
  smooth();
  tint(255, 153);

}

void draw() 
{  
  background(255, 217); 
  
  inverseX = width-mouseX;
  inverseY = height-mouseY;
  
  rr = random(0, 255);
  rg = random(0, 255);
  rb = random(0, 255);
  ra = random(50, 135);

if ((mouseX >= 459) && (mouseY >= 134) && (mouseX <= 461) && (mouseY <= 136)) {
  background(217, 217); 
  tint(rr, rg, rb, ra);
  image(ur, mouseX, inverseY, 200, 70);
  image(ll, inverseX, mouseY, 200, 70);
  image(ul, inverseX, inverseY, 200, 70);
  image(lr, mouseX, mouseY, 200, 70);
    soundManager.play('zs');
} else {

  if ((mouseX >= 419) && (mouseY >= 134) && (mouseX <= 421) && (mouseY <= 136)) {
   background(ra, 217); 
   image(ur, mouseX, inverseY, 200, 70);
   image(ll, inverseX, mouseY, 200, 70);
   image(ul, inverseX, inverseY, 200, 70);
   image(lr, mouseX, mouseY, 200, 70);
    soundManager.play('xs');
  } else {
    
   if ((mouseX >= 379) && (mouseY >= 134) && (mouseX <= 381) && (mouseY <= 136)) {
   background(ra, 217); 
   tint(rr, rg, rb, ra);
   image(ur, mouseX, inverseY, 200, 70);
   image(ll, inverseX, mouseY, 200, 70);
   image(ul, inverseX, inverseY, 200, 70);
   image(lr, mouseX, mouseY, 200, 70);
    soundManager.play('as');
  } else {
    image(ur, mouseX, inverseY, 200, 70);
    image(ll, inverseX, mouseY, 200, 70);
    image(ul, inverseX, inverseY, 200, 70);
    image(lr, mouseX, mouseY, 200, 70);  
    }
  }
}  
/*
  if ((mouseX == 460) && (mouseY == 135)) {
  tint(rr, rg, rb, ra);
  rect(mouseX, inverseY, 200, 70);
  rect(inverseX, mouseY, 200, 70);
  rect(inverseX, inverseY, 200, 70);
  rect(mouseX, mouseY, 200, 70);  
} else {
  rect(mouseX, inverseY, 200, 70);
  rect(inverseX, mouseY, 200, 70);
  rect(inverseX, inverseY, 200, 70);
  rect(mouseX, mouseY, 200, 70);  
  }
*/
}


