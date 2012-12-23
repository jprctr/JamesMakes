int vertices, maxV, colorR, colorG, colorB, colorA, outX, outY;
int[] posX, posY, audioX, audioY;
 
void setup(){
  size(500,500);
  smooth();
  vertices = 0;
  maxV = 12;
  outX = 0;
  outY = 0;
  colorR = random(0,255);
  colorG = random(0,255);
  colorB = random(0,255);
  colorA = 135;
  posX = new int[maxV];
  posY = new int[maxV];  
  audioX = new int[maxV];
  audioY = new int[maxV];
  
  for (int i=0; i<maxV; i++){
   posX[i] = random(width/5,width/5*4);
   posY[i] = random(height/5,height/5*4);
  }
  aPlay(outX,outY);
}

  function aPlay(xsound,ysound){
     var Synth = function(audiolet, frequency) {
             AudioletGroup.apply(this, [audiolet,0,1]);
             this.sine = new Sine(this.audiolet, frequency);
             
             this.gain = new Gain(this.audiolet);
             this.envelope = new PercussiveEnvelope(this.audiolet,1,0.2,0.5,
                                                    function() {
                                                     this.audiolet.scheduler.addRelative(0,
                                                             this.remove.bind(this));
                                                    }.bind(this)
             );
             
             this.envelope.connect(this.gain,0,1);
             this.sine.connect(this.gain);
             this.gain.connect(this.outputs[0]);
     };
     extend(Synth, AudioletGroup);
     
     var frequencyPattern = new PSequence([xsound,ysound],2);
     
     var AudioletApp = function(){
             this.audiolet = new Audiolet();
             
             
             
             this.audiolet.scheduler.play([frequencyPattern],2,
                     function(frequency) {
                             var synth = new Synth(this.audiolet,frequency);
                             synth.connect(this.audiolet.output);
                     }.bind(this)
             );
     };
     
     this.audioletApp = AudioletApp();
  };

void mouseClicked(){
  if (vertices<maxV){
    vertices = vertices+1;
    posX[vertices-1] = mouseX;
    posY[vertices-1] = mouseY;
    outX = audioX[vertices-1];
    outY = audioX[vertices-1];
    colorR = posX[vertices-1]/2;
    colorG = posY[vertices-1]/2;
    colorB = (posX[vertices-1]+posX[vertices-1])/4;
  } else {
    vertices = 0;
    outX = audioX[vertices];
    outY = audioX[vertices];
    colorR = posX[vertices]/2;
    colorG = posY[vertices]/2;
    colorB = (posX[vertices]+posX[vertices])/4;
  }
  posX[maxV-1] = posX[0];
  posY[maxV-1] = posY[0];
  var fPattern = new PSequence([outX,outY],2)
  audiolet.scheduler.play([fPattern],2,
    function(frequency) {
      var synth = new Synth(this.audiolet,frequency);
      synth.connect(this.audiolet.output);
    }.bind(this)
  );
}
 
void draw(){
  background(255);
  strokeWeight(2);
  stroke(0,135);
  translate(width/2,height/2);
 
  pushMatrix();
    translate(-width/2,-height/2);
    beginShape();
      for (int i=0; i<maxV; i++){
        fill(posX[1]/2,posX[i]/2,posY[i]/2,135);
        if (posX[i]==0){
          vertex(posX[i],posY[i]);
        } else {
          vertex(posX[i],posY[i]);
          audioX[i] = int(map(posX[i],0,width,220,440));
          audioY[i] = int(map(posY[i],0,height,220,440));
        }
      }
    endShape();
  popMatrix();
  
}
 
void keyPressed(){
  loop();
  setup();
}