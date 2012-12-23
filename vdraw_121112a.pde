int vertices, maxV, audioX, audioY;
float mod;
int[] posX, posY;
 
void setup(){
  size(500,500);
  smooth();
  vertices = 0;
  audioX = 0;
  maxV = 12;
  posX = new int[maxV];
  posY = new int[maxV];
}
 
void mouseClicked(){
  var aPlay = function(){
   this.audiolet = new Audiolet();
    this.sine = new Sine(this.audiolet, audioX);
    //this.pulse = new Pulse(this.audiolet, audioY);
    
    this.gainEnv = new PercussiveEnvelope(this.audiolet,0.9,1,0.45);
    this.gainEnvMulAdd = new MulAdd(this.audiolet,0.1);
    this.gain = new Gain(this.audiolet);
    
    this.sine.connect(this.gain);
    //this.pulse.connect(this.gain);

    this.gainEnv.connect(this.gainEnvMulAdd);
    this.gainEnvMulAdd.connect(this.gain,0,1);
    this.gain.connect(this.audiolet.output);
  };
  
  if (vertices<maxV){
    vertices = vertices+1;
    posX[vertices-1] = mouseX;
    posY[vertices-1] = mouseY;
    aPlay();
  } else {
    vertices = 0;
    audioX = 0;
  }


}
 
void draw(){
  background(255);
  strokeWeight(2);
  stroke(135,135);
 
  translate(width/2,height/2);
 
  if (mouseY<height/5){
    //rotate(radians(mouseX));
    //mod = 1.618;
  } else {
    mod = 1;
  }
 
  pushMatrix();
    translate(-width/2,-height/2);
    beginShape();
      for (int i=0; i<maxV; i++){
        if (posX[i]==0){
        } else {
          fill(posX[1]/2,posX[i]/2,posY[i]/2,135);
          vertex(posX[i]/mod,posY[i]/mod);
          audioX = int(map(posX[i],0,width,220,440));
          //audioY = int(map(posY[i],0,height,110,330));
        }
      }
    endShape();
  popMatrix();
  
  //text(audioY,0,0);
}
 
void keyPressed(){
  loop();
  setup();
}