//12-12-18 Vertex drawing

int vertices, maxV, colorR, colorG, colorB, colorA, outX, outY;
int[] posX, posY, audioX, audioY;

void setup(){
  size(500,500);
  smooth();
  
  //Sets the maximum number of vertices
  maxV = 9;
  
  //Sets default values
  vertices = 0;
  outX = 0;
  outY = 0;
  //random colors to start
  colorR = random(0,255);
  colorG = random(0,255);
  colorB = random(0,255);
  colorA = 135;
  posX = new int[maxV];
  posY = new int[maxV];  
  audioX = new int[maxV];
  audioY = new int[maxV];
  
  //Sets random vertex values on start
  for (int i=0; i<maxV; i++){
    posX[i] = random(width/5,width/5*4);
    posY[i] = random(height/5,height/5*4);
  }
}

void draw(){
  background(255);
  strokeWeight(2);
  stroke(0,135);
  
  //Centers the drawing (by default 0,0 is in the top left)
  translate(width/2,height/2);
 
  pushMatrix();
    translate(-width/2,-height/2);
    beginShape();
      //Loops through vertices
      for (int i=0; i<maxV; i++){
        //Sets color based on vertex position
        fill(colorR,colorG,colorB,colorA);
          //Sets vertex positions
          vertex(posX[i],posY[i]);
          //Sets values for audio arrays
          audioX[i] = int(map(posX[i],0,width,49,523.25));
          audioY[i] = int(map(posY[i],0,height,0,5));
        endShape();
      }
  popMatrix();
  
}    

void mouseClicked(){
//When clicked, increment the number of vertices by one up to the maximum, at which point, reset to 0
  if (vertices<maxV){
    vertices = vertices+1;
    //sets positions equal to mouse position on click
    posX[vertices-1] = mouseX;
    posY[vertices-1] = mouseY;
    outX = audioX[vertices-1];
    outY = audioY[vertices-1];
    colorR = posX[vertices-1]/2;
    colorG = posY[vertices-1]/2;
    colorB = (posX[vertices-1]+posX[vertices-1])/4;
  } else {
    vertices = 0;
    outX = audioX[vertices];
    outY = audioY[vertices];
    colorR = posX[vertices]/2;
    colorG = posY[vertices]/2;
    colorB = (posX[vertices]+posX[vertices])/4;
    posX[0] = mouseX;
    posY[0] = mouseY;
  }
  //posX[maxV-1] = posX[0];
  //posY[maxV-1] = posY[0];
  //println(outX);
  //println(vertices);
  //Call some JS to synthesize audio using the frequencies set on click
  VERTEXDRAW.audioletRun(outX, outY, vertices);
}

void keyPressed(){
  loop();
  setup();
}