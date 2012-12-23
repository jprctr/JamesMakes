//variables go here
int outerx, outery, xcor, ycor, otx, oty, x, y, px, py;
float cpA, cpB, cpC, cpD, 
      ioutx, iouty,
      sval, speed;

//setup goes here
void setup() {
  size(1280,720);
  background(0, 200);
  smooth();
}

void draw(){
  //general stuff - frame rate and background
  frameRate(6);
  fill(200,50);
  rect(0,0,width,height);  
  
  speed = abs(mouseX-pmouseX) + abs(mouseY-pmouseY);
  print(speed);

  if (mousePressed) {
    sval += 0.5;
  } else {
    sval -= 0.2;
  }

  
  sval = speed/500;
  sval = constrain(sval, 0.5, 1.5);
  scale(sval);
  
//this is the line - our starting point
  //outerx
  if (mouseX > width/2) {
    otx = (width/2)-((mouseX)-(width/2));
    outerx = otx++;
  } else {
    otx = (width/2)+((width/2)-(mouseX));
    outerx = otx--;
  }  
  //outery
  if (mouseY > height/2) {
    outery = (height/2)-((mouseY)-(height/2));
  } else {
    outery = (height/2)+((height/2)-(mouseY));
  }  
  
//    outery = (height/2)+((height/2)-(mouseY));
 // stroke(255);
 // line(outerx,outery,mouseX,mouseY);

  makeCurve(3, cpA, cpB, cpC, cpD);
}
  

void makeB(float count) {
    count *= .5;
    ioutx = outerx-(count*1.78);
    iouty = outery-count;
    /*
    if (count > 10) {
      pushMatrix();
    stroke(155);
    fill(255,100);
    line(width/2, height, outerx, outery);
    //bezier(width/2, 0, width-count, 0+count, width-count, height+count, iouty, ioutx);    
    translate(outerx, outery);
    makeB(count);
    popMatrix();     
    }
    */
    //bezier(width/2, height/2, cpA, cpB, cpC, cpD, outery, outerx);  

}  

  
//now I'm going to try to adapt the line stuff to a (bezier)curve
void makeCurve(int level, float cpA, float cpB, float cpC, float cpD) {
 // h -= 10;    
  
  cpA = random(0,width);  
  cpB = random(0,height);
  cpC = random(0,width);
  cpD = random(0,height);
  
    stroke(155);
    fill(255,100);  
    /*
  bezier(width/2, height/2, 0, 0, width, height, outery, outerx);  
  bezier(width/2, height/2, width, height, 0, 0, outerx, outery);
  bezier(width/2, height/2, width, height, 0, 0, outery, outerx);    
  */

  bezier(width/2, height/2, cpA, cpB, cpC, cpD, outerx, outery);  
  //bezier(width/2, height/2, cpA, cpB, cpC, cpD, outery, outerx);  
  //bezier(width/2, height/2, cpA, cpB, cpC, cpD, mouseX, mouseY);
  //bezier(width/2, height/2, cpA, cpB, cpC, cpD, mouseY, mouseX);      
  
  if (level > 1) {
    level = level - 1;
    makeCurve(level, cpA/2, cpB/2, cpC/2, cpD/2);
  }
  
  /*
      if (h < 100) {
          makeCurve(width/2, xcor/2, ycor/2);
            }  
            */
}

