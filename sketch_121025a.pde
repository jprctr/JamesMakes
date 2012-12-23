//interactive construct
import processing.opengl.*;
int vertices = 360;
int[] xVp = new int[vertices];
int[] yVp = new int[vertices];
int[] zVp = new int[vertices];
 
void setup(){
  size(500,500,OPENGL); 
  frameRate(12);
  fill(100,100);
}
 
void mouseMoved(){
  vertices = int(map(pmouseX+pmouseY,0,width+height,0,360));
  for (int i=0; i<vertices; i++){
    xVp[i] = int(cos(i)*mouseY/2);
    yVp[i] = int(sin(i)*mouseX/2);
    zVp[i] = int(tan(i)*(mouseX+mouseY)/4);
  }
}
 
void draw(){
  background(0);
  translate(width/2,height/2);
  if (mouseX < width/2) {
    rotateZ(radians(millis()*-0.005));
  } else {
    rotateZ(radians(millis()*0.005));
  }
  if (mouseY < height/2) {
    rotateY(radians(millis()*-0.005));
  } else {
    rotateY(radians(millis()*0.005));
  }
  beginShape();
    for (int j=0; j<vertices; j++){
      float xColor = map(xVp[j],0,width,100,255);
      float yColor = map(yVp[j],0,height,100,255);
      float zColor = map(zVp[j],0,height,100,255);
      fill(xColor,yColor,zColor,153);
      vertex(xVp[j],yVp[j],zVp[j]);
    }
  endShape();
  //saveFrame();
}
