/*ideas here:

1. Calculate coordinate location based on mouse position
2. Draw simple environment based on location
3. Adjust relationship between framerate adn sepeed of motion
4. Enrich environment

*/

//variables
int X, Y, R, D, P;

void setup()
  {
    size(800,600);  
    frameRate(24);
    background(135,135,135);
    
    int X = 0;
    int Y = 0;
    int R = 0;
    int D = 0;
    int P = 0;
    
  }
  
void draw()
{

    background(0,0,0,135);

//Display Variables//Coordinates
    text(X, ((width/2)-(width/10)), height/10); 
    //text(P, width/2, height/10); 
    text(R, ((width/2)+(width/10)), height/10); 

//Display Mouse/Tap Targets
    noFill();
    rect(width/4, 0, width/2, ((height/8)*3));
    rect(width/4, ((height/8)*5), width/2, ((height/8)*3));
    

//Changes Variables/Coordinates
//Changes X
    if ((mouseX > width/4) && (mouseX < ((width/4)*3))) {
    //Forward
      if (mouseY < ((height/8)*3)) {
        X = X+1;
        
        noStroke();
        fill(255,255,255,50);
        rect(width/4, 0, width/2, ((height/8)*3));
        
        fill(255,255,255);
      }
   //Backward
      if (mouseY > ((height/8)*5)) {
        X = X-1;
        
        noStroke();
        fill(255,255,255,50);
        rect(width/4, ((height/8)*5), width/2, ((height/8)*3));
        
        fill(255,255,255);
      }      
    }

//Changes R
    //Right
    if ((mouseX > ((width/4)*3)) && (mouseX < width)) {
        D = D+1;
        if (D < 360) {
          if (D < 180) {
            R = R+1;
          } else {
            R = (-360+D);
          }
      } else {
        D = 0;
      }
        
        noStroke();
        fill(255,255,255,50);
        rect(((width/4)*3), 0, width/4, height);
        
        fill(255,255,255);
        
    }
    //Left
    if ((mouseX < (width/4)) && (mouseX > 0)) {
        D = D+1;
        if (D < 360) {
          if (D < 180) {
            R = R-1;
          } else {
            R = (360-D);
          }
      } else {
        D = 0;
      }
        
        noStroke();
        fill(255,255,255,50);
        rect(0, 0, width/4, height);
        
        fill(255,255,255);
        
    }

//Display HERE BE DRAGONS
    
    //P = R/10;
    P = R;

    stroke(255,255);
    fill(200,255,225,75);
    //front
    quad(width/4-X-P,height/3-X-P,width/4*3+X-P,height/3-X+P,width/4*3+X-P,height/4*3+X-P,width/4-X-P,height/4*3+X+P);
    //right
    quad(width/4*3+X-P,height/3-X+P,width/1+X-P,height/4-X-P,width/1+X-P,height/8*7+X+P,width/4*3+X-P,height/4*3+X-P);
    //left
    quad(width/4-X-P,height/3-X-P,width-width-X-P,height/4-X-P,width-width-X-P,height/8*7+X+P,width/4-X-P,height/4*3+X+P);
    //backwall
    quad(width-width-X-P,height/4-X-P,width/1+X-P,height/4-X-P,width/1+X-P,height/8*7+X+P,width-width-X-P,height/8*7+X+P);

/* just zooms
    //front
    quad(width/4-X,height/3-X,width/4*3+X,height/3-X,width/4*3+X,height/4*3+X,width/4-X,height/4*3+X);
    //right
    quad(width/4*3+X,height/3-X,width/1+X,height/4-X,width/1+X,height/8*7+X,width/4*3+X,height/4*3+X);
    //left
    quad(width/4-X,height/3-X,width-width-X,height/4-X,width-width-X,height/8*7+X,width/4-X,height/4*3+X);
    //backwall
    quad(width-width-X,height/4-X,width/1+X,height/4-X,width/1+X,height/8*7+X,width-width-X,height/8*7+X);
*/
    
/*
    quad(((width/8)*5)+X*-P,((height/4)*3),width+X*-P,((height/8)*7),width+X*-P,height/2,((width/8)*5)+X*-P,height/2);
    quad(((width/8)*3)-X*-P,((height/4)*3),0-X*-P,((height/8)*7),0-X*-P,height/2,((width/8)*3)-X*-P,height/2);
*/
    noStroke();
    fill(255,255,255);

} 

