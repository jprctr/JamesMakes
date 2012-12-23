/*
@pjs preload="data/land5_A1.jpg, 
data/land5_A2.jpg,
data/land5_A3.jpg,
data/land5_A4.jpg,
data/land5_A5.jpg,
data/land5_B1.jpg,
data/land5_B2.jpg,
data/land5_B3.jpg,
data/land5_B4.jpg,
data/land5_B5.jpg,
data/land5_C1.jpg,
data/land5_C2.jpg,
data/land5_C3.jpg,
data/land5_C4.jpg,
data/land5_C5.jpg,
data/land5_D1.jpg,
data/land5_D2.jpg,
data/land5_D3.jpg,
data/land5_D4.jpg,
data/land5_D5.jpg,
data/land5_E1.jpg,
data/land5_E2.jpg,
data/land5_E3.jpg,
data/land5_E4.jpg,
data/land5_E5.jpg";
*/

PImage a1,a2,a3,a4,a5,b1,b2,b3,b4,b5,c1,c2,c3,c4,c5,d1,d2,d3,d4,d5,e1,e2,e3,e4,e5;

void setup()
  {
    size(800,600);  
    frameRate(24);
    
    a1 = loadImage("data/land5_A1.jpg");
    a2 = loadImage("data/land5_A2.jpg");
    a3 = loadImage("data/land5_A3.jpg");
    a4 = loadImage("data/land5_A4.jpg");
    a5 = loadImage("data/land5_A5.jpg");
    b1 = loadImage("data/land5_B1.jpg");
    b2 = loadImage("data/land5_B2.jpg");
    b3 = loadImage("data/land5_B3.jpg");
    b4 = loadImage("data/land5_B4.jpg");
    b5 = loadImage("data/land5_B5.jpg");
    c1 = loadImage("data/land5_C1.jpg");
    c2 = loadImage("data/land5_C2.jpg");
    c3 = loadImage("data/land5_C3.jpg");
    c4 = loadImage("data/land5_C4.jpg");
    c5 = loadImage("data/land5_C5.jpg");
    d1 = loadImage("data/land5_D1.jpg");
    d2 = loadImage("data/land5_D2.jpg");
    d3 = loadImage("data/land5_D3.jpg");
    d4 = loadImage("data/land5_D4.jpg");
    d5 = loadImage("data/land5_D5.jpg");
    e1 = loadImage("data/land5_E1.jpg");
    e2 = loadImage("data/land5_E2.jpg");
    e3 = loadImage("data/land5_E3.jpg");
    e4 = loadImage("data/land5_E4.jpg");
    e5 = loadImage("data/land5_E5.jpg");

  }
  
void draw()
{
  
  // Display Image Based on Grid Position
  
/*
E1,E2,E3,E4,E5
D1,D2,D3,D4,D5
C1,C2,C3,C4,C5
B1,B2,B3,B4,B5
A1,A2,A3,A4,A5
*/

//Row A
  if ((mouseY < 600) && (mouseY > 480)) {
//A1
    if (mouseX < 160) {
      image (a1, 0, 0);
    }
//A2
    if ((mouseX < 320) && (mouseX > 160)){
      image (a2, 0, 0);
    }    
//A3
    if ((mouseX < 480) && (mouseX > 320)){
      image (a3, 0, 0);
    }
//A4
    if ((mouseX < 640) && (mouseX > 480)){
      image (a4, 0, 0);
    }
//A5
    if ((mouseX < 800) && (mouseX > 640)){
      image (a5, 0, 0);
    }    
  }

//Row B
  if ((mouseY < 480) && (mouseY > 360)) {
//B1
    if (mouseX < 160) {
      image (b1, 0, 0);
    }
//B2
    if ((mouseX < 320) && (mouseX > 160)){
      image (b2, 0, 0);
    }    
//B3
    if ((mouseX < 480) && (mouseX > 320)){
      image (b3, 0, 0);
    }
//B4
    if ((mouseX < 640) && (mouseX > 480)){
      image (b4, 0, 0);
    }
//B5
    if ((mouseX < 800) && (mouseX > 640)){
      image (b5, 0, 0);
    }
  }
  
//Row C
  if ((mouseY < 360) && (mouseY > 240)) {
//C1
    if (mouseX < 160) {
      image (c1, 0, 0);
    }
//C2
    if ((mouseX < 320) && (mouseX > 160)){
      image (c2, 0, 0);
    }    
//C3
    if ((mouseX < 480) && (mouseX > 320)){
      image (c3, 0, 0);
    }
//C4
    if ((mouseX < 640) && (mouseX > 480)){
      image (c4, 0, 0);
    }
//C5
    if ((mouseX < 800) && (mouseX > 640)){
      image (c5, 0, 0);
    }
  }
  
//Row D
  if ((mouseY < 240) && (mouseY > 120)) {
//D1
    if (mouseX < 160) {
      image (d1, 0, 0);
    }
//D2
    if ((mouseX < 320) && (mouseX > 160)){
      image (d2, 0, 0);
    }    
//D3
    if ((mouseX < 480) && (mouseX > 320)){
      image (d3, 0, 0);
    }
//D4
    if ((mouseX < 640) && (mouseX > 480)){
      image (d4, 0, 0);
    }
//D5
    if ((mouseX < 800) && (mouseX > 640)){
      image (d5, 0, 0);
    }
  }
  
//Row E
  if (mouseY < 120) {
//E1
    if (mouseX < 160) {
      image (e1, 0, 0);
    }
//E2
    if ((mouseX < 320) && (mouseX > 160)){
      image (e2, 0, 0);
    }    
//E3
    if ((mouseX < 480) && (mouseX > 320)){
      image (e3, 0, 0);
    }
//E4
    if ((mouseX < 640) && (mouseX > 480)){
      image (e4, 0, 0);
    }
//E5
    if ((mouseX < 800) && (mouseX > 640)){
      image (e5, 0, 0);
    }
  }
  
} 

