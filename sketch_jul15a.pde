import processing.opengl.*;

//variables
float X, Y, R, D, P, Z,
fx,fy,fw,fh,fq;

void setup()
  {
    size(800,600,OPENGL);  
    frameRate(24);
    
    int X = 0;
    int Y = 0;
    int R = 0;
    int D = 0;
    int P = 0;
    
    fw = random(100,1000);
    fh = random(100,500);
  }
  
void draw()
{
    background(0,0,0,135);
    noStroke();
    stroke(255,255,255);
    noFill();
        
//Display Variables//Coordinates
    text(Z, ((width/2)-(width/10)), height/10); 
    text(R, width/2, height/5); 
    text(P, ((width/2)+(width/10)), height/10); 

//Display Mouse/Tap Targets
      noStroke();
      stroke(200,255,225);
      noFill();
    
//Changes Variables/Coordinates
//Changes X
    if ((mouseX > width/4) && (mouseX < ((width/4)*3))) {
      noStroke();
      stroke(200,255,225);
      noFill();
    //Forward
      if (mouseY < ((height/8)*3)) {
      rect(width/4, 0, width/2, ((height/8)*3));
        X = X+1;
      noStroke();
      stroke(200,255,225);
      noFill();
        rect(width/4, 0, width/2, ((height/8)*3));
      }
   //Backward
      if (mouseY > ((height/8)*5)) {
      noStroke();
      stroke(200,255,225);
      noFill();
      rect(width/4, ((height/8)*5), width/2, ((height/8)*3));
        X = X-1;
      noStroke();
      stroke(200,255,225);
      noFill();
        rect(width/4, ((height/8)*5), width/2, ((height/8)*3));
      }      
    }

//Changes R
    //Right
    if ((mouseX > ((width/4)*3)) && (mouseX < width)) {
      noStroke();
      stroke(200,255,225);
      noFill();
        D = D+1;
        if (D < 360) {
          if (D < 180) {
            R = R+1;
          } else {
            R = (-360+D);
          }
      } else {
      noStroke();
      stroke(200,255,225);
      noFill();
        D = 0;
      }
      noStroke();
      stroke(200,255,225);
      noFill();
        rect(((width/4)*3), 0, width/4, height);
    }
    //Left
    if ((mouseX < (width/4)) && (mouseX > 0)) {
      noStroke();
      stroke(200,255,225);
      noFill();
        D = D+1;
        if (D < 360) {
          if (D < 180) {
            R = R-1;
          } else {
            R = (360-D);
          }
      } else {
      noStroke();
      stroke(200,255,225);
      noFill();
        D = 0;
      }
        rect(0, 0, width/4, height);
    }

//Display

    P = sin(radians(R));
    Z = 10*X;
    
    translate(width/2, height/4, 0);
    
    rotateY(radians(R));

    fx = 0;
    fy = 0;
    
    fq = abs((R/2)+10);
    
    for (float i = 0; i<fq; i++){
      translate(X,R,Z);
      noStroke();
      stroke(200,255,225);
      noFill();
      rectCube(fx,fy,fw,fh);
    }
} 

  //rectcube
  void rectCube (float fx, float fy, float fw, float fh){    
  
    pushMatrix();
    
    noStroke();
    stroke(200,255,225);
    //fill(135,135,135);
    
    //front
    rect(fx,fy,fw,fh);
    
    //left
    rotateY(radians(90));
    rect(fx,fy,fw,fh);
    
    //backwall
    translate(fw,0,fh);
    rotateY(radians(90));
    rect(fx,fy,fw,fh);

    //right      
    rotateY(radians(90));
    rect(fx,fy,fw,fh);

    //top
    rotateX(radians(90));
    rect(fx,fy,fw,fh);

    //bottom
    translate(0,0,fh*-1);
    rect(fx,fy,fw,fh);   
   
    popMatrix(); 
  }
