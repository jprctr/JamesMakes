int rectWidth;
   
void setup() {
  size(500, 200);
  noStroke();
  background(0);
  rectWidth = width/10;
}

void draw() { 
  // keep draw() here to continue looping while waiting for keys
}
/*
  int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  if (keyIndex == -1) {
    // If it's not a letter key, clear the screen
    background(0);
  } else { 
    // It's a letter key, fill a rectangle
    fill(second() % 255, (second()*millis()) % 255, millis() % 255, millis() % 255);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
*/

void keyPressed() {
  int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  if (keyIndex == -1) {
    // If it's not a letter key, clear the screen
    background(0);
  } else { 
    // It's a letter key, fill a rectangle
    fill(second() % 255, (second()*millis()) % 255, millis() % 255, millis() % 255);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }

    if (keyIndex < 3) {
    soundManager.play('as');
    }

    if ((keyIndex >= 3) && (keyIndex < 6)) {
    soundManager.play('bs');
    }

    if ((keyIndex >= 6) && (keyIndex < 9)) {
    soundManager.play('cs');
    }

    if ((keyIndex >= 9) && (keyIndex < 12)) {
    soundManager.play('ds');
    }

    if ((keyIndex >= 12) && (keyIndex < 15)) {
    soundManager.play('es');
    }

    if ((keyIndex >= 15) && (keyIndex < 18)) {
    soundManager.play('fs');
    }

    if ((keyIndex >= 18) && (keyIndex < 21)) {
    soundManager.play('gs');
    }

    if ((keyIndex >= 21) && (keyIndex < 24)) {
    soundManager.play('hs');
    }

    if ((keyIndex >= 24) && (keyIndex < 26)) {
    soundManager.play('is');
    }



// Letter Keys

  if(keyPressed) {

	fill(#ffffff);
    
    if (key == 'a' || key == 'A') {
font = createFont("Arial",100);
	textFont(font, 100); 
	text("A", x, 100);
    }

    if (key == 'b' || key == 'B') {
font = createFont("Arial",100);
	textFont(font, 100); 
	text("B", x, 100);
    }

    if (key == 'c' || key == 'C') {
font = createFont("Arial",100);
	textFont(font, 100); 
	text("C", x, 100);
    }

    if (key == 'd' || key == 'D') {
font = createFont("Arial",100);
	textFont(font, 100); 
	text("D", x, 100);
    }

    if (key == 'e' || key == 'E') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("E", x, 100);
    }

    if (key == 'f' || key == 'F') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("F", x, 100);
    }

    if (key == 'g' || key == 'G') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("G", x, 100);
    }

   if (key == 'h' || key == 'H') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("H", x, 100);
    }

    if (key == 'i' || key == 'I') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("I", x, 100);
    }

    if (key == 'j' || key == 'J') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("J", x, 100);
    }

    if (key == 'k' || key == 'K') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("K", x, 100);
    }

    if (key == 'l' || key == 'L') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("L", x, 100);
    }

    if (key == 'm' || key == 'M') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("M", x, 100);
    }

    if (key == 'n' || key == 'N') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("N", x, 100);
    }

    if (key == 'o' || key == 'O') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("O", x, 100);
    }

    if (key == 'p' || key == 'P') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("P", x, 100);
    }

    if (key == 'q' || key == 'Q') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("Q", x, 100);
    }

    if (key == 'r' || key == 'R') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("R", x, 100);
    }

    if (key == 's' || key == 'S') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("S", x, 100);
    }

    if (key == 't' || key == 'T') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("T", x, 100);
    }

    if (key == 'u' || key == 'U') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("U", x, 100);
    }

    if (key == 'v' || key == 'V') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("V", x, 100);
    }

    if (key == 'w' || key == 'W') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("W", x, 100);
    }

    if (key == 'x' || key == 'X') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("X", x, 100);
    }

    if (key == 'y' || key == 'Y') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("Y", x, 100);
    }

    if (key == 'z' || key == 'Z') {

font = createFont("Arial",100);
	textFont(font, 100); 
	text("Z", x, 100);
    }
  }


/*
soundManager.onload = function() {

soundManager.createSound({
    id: 'as',
    url: '/data/1.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'bs',
    url: '/data/2.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'cs',
    url: '/data/3.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'ds',
    url: '/data/4.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'es',
    url: '/data/5.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'fs',
    url: '/data/6.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'gs',
    url: '/data/7.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'hs',
    url: '/data/8.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

soundManager.createSound({
    id: 'is',
    url: '/data/9.mp3',
    stream: true,
    autoPlay: true,
    multiShot: false,
   });

  mySound.play();
  }
}
*/
}


