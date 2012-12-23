/*
@pjs preload="data/bt_1.jpg, 
data/bt_2.jpg,
data/bt_3.jpg,
data/bt_4.jpg,
data/bt_5.jpg,
data/bt_6.jpg,
data/bt_7.jpg,
data/bt_8.jpg,
data/bt_9.jpg,
data/bt_10.jpg";
*/

PImage a,b,c,d,e,f,g,h,i,j;

void setup()
  {
    size(640,350);  
    frameRate(24);
    
    a = loadImage("data/bt_1.jpg");
    b = loadImage("data/bt_2.jpg");
    c = loadImage("data/bt_3.jpg");
    d = loadImage("data/bt_4.jpg");
    e = loadImage("data/bt_5.jpg");
    f = loadImage("data/bt_6.jpg");
    g = loadImage("data/bt_7.jpg");
    h = loadImage("data/bt_8.jpg");
    i = loadImage("data/bt_9.jpg");
    j = loadImage("data/bt_10.jpg");    
    
  }
  
void draw()
{
  
  // X Rotate
    if (mouseX < 64) {
      image (a, 0, 0);
    }
    if ((mouseX < 128) && (mouseX > 64)) {
      image (b, 0, 0);
    }
    if ((mouseX < 192) && (mouseX > 128)) {
      image (c, 0, 0);
    }
    if ((mouseX < 256) && (mouseX > 192)) {
      image (d, 0, 0);
    }
    if ((mouseX < 320) && (mouseX > 256)) {
      image (e, 0, 0);
    }
    if ((mouseX < 384) && (mouseX > 320)) {
      image (f, 0, 0);
    }
    if ((mouseX < 448) && (mouseX > 384)) {
      image (g, 0, 0);
    }
    if ((mouseX < 512) && (mouseX > 448)) {
      image (h, 0, 0);
    }
    if ((mouseX < 576) && (mouseX > 512)) {
      image (i, 0, 0);
    }
    if ((mouseX < 640) && (mouseX > 576)) {
      image (j, 0, 0);
    }
    /*
  // Y Tint
    if (mouseY < 59) {
      tint (255,255,205);
    }
    if ((mouseY < 118) && (mouseY > 59)) {
      tint (255,205,205);
    }
    if ((mouseY < 177) && (mouseY > 118)) {
      tint (205,205,205);
    }
    if ((mouseY < 236) && (mouseY > 177)) {
      tint (205,205,255);
    }
    if ((mouseY < 295) && (mouseY > 236)) {
      tint (205,255,255);
    }
    if ((mouseY < 350) && (mouseY > 295)) {
      tint (255,255,255);
    }
    */
} 

