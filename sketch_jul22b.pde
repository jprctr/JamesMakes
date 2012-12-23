import processing.opengl.*;

float D,R,X;

void setup()
{
  size(640,480,OPENGL);
  frameRate(24);
}

void draw()
{
  background(0,0,0,255);

  noStroke();
  fill(255,255,255);
  text(radians(X), width/2+50, height/4*3-10); 
  text(R, width/2-100, height/4*3-10); 

//lights
/*
  ambientLight(50, 75, 100);
  directionalLight(50, 100, 75, 0, 1, 0);
  lightFalloff(3, 2, 1);
  */
    
  pushMatrix();
  translate(width / 2, height / 4);
  rotateX(radians(X));
  rotateY(R);
  //pyramid
  stroke(0)
  fill(100,155,135);

  drawCylinder(0,135,190,3);
  popMatrix();
  
//Changes Variables/Coordinates
//Changes X
    //Forward
      if (mouseY < height/4) {
        X = X+1;
        
        noStroke();
        stroke(255);
        fill(50,50,50);
        rect(0, 0, width, height/4);
      }
   //Backward
      if (mouseY > ((height/4)*3)) {
        X = X-1;
        
        noStroke();
        stroke(255);
        fill(50,50,50);
        rect(0, ((height/4)*3), width, ((height/4)*3));
      }      

//  translate(R,0);
//  rect(width/2-50,height/2-50,100,100);
  
//Changes R
//  R = radians(map(sin(radians(D)),-1.0,1.0,0,360));
    R = radians(D);
  
  if ((mouseX > ((width/4)*3)) && (mouseX < width)) {  
    D++;
        noStroke();
        stroke(255);
        fill(50,50,50);
        rect(((width/4)*3), 0, width/4, height);
  }
  
  if ((mouseX < (width/4)) && (mouseX > 0)) {
    D--;
        noStroke();
        stroke(255);
        fill(50,50,50);
        rect(0, 0, width/4, height);        
  }
  
}

void drawCylinder(float topRadius, float bottomRadius, float tall, int sides) {
  float angle = 0;
  float angleIncrement = TWO_PI / sides;
  beginShape(QUAD_STRIP);
  for (int i = 0; i < sides + 1; ++i) {
    vertex(topRadius*cos(angle), 0, topRadius*sin(angle));
    vertex(bottomRadius*cos(angle), tall, bottomRadius*sin(angle));
    angle += angleIncrement;
  }
  endShape();
  
  // If it is not a cone, draw the circular top cap
  if (topRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);
    
    // Center point
    vertex(0, 0, 0);
    for (int i = 0; i < sides + 1; i++) {
      vertex(topRadius * cos(angle), 0, topRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }

  // If it is not a cone, draw the circular bottom cap
  if (bottomRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);

    // Center point
    vertex(0, tall, 0);
    for (int i = 0; i < sides + 1; i++) {
      vertex(bottomRadius * cos(angle), tall, bottomRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }
}

