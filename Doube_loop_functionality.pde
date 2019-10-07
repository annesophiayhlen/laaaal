int x = 0; //rect x-axis
int y = 0; //rect y-axis
int boxSizeX; //box size 
int boxSizeY;//box size
int nBoxes= 10; //boxsize

Boolean wasMouseEverPressed = false;

int sW = 2; // strokeWeight 
int black = 0; 
int white = 255;
int dGrey = 20;
int lGrey = 150;

//pentagon {X0,X1,X2,X3,X4} = n = 5
//int n = 5;
//float [] pX = new float [n];
//float [] pY = new float [n];
//float edgeLenght = 50; 

void setup(){ 
 size(1000,1000);
 background(black);
 strokeWeight(sW);
 stroke(white);
 
 boxSizeX=width/nBoxes;
 boxSizeY=height/nBoxes;
  for(int x = 0 ; x < width; x = x += boxSizeX){ //double for loop for the rects
    for(int y = 0 ; y < height; y = y += boxSizeY){
      fill (random(dGrey,lGrey)); // why are they flicking around ?! :/ 
      rect(x,y,boxSizeX,boxSizeY); 
  }
 }
}

void draw(){   
 //pentagon {X0,X1,X2,X3,X4} = n = 5
//int n = 5;
//float [] pX = new float [n];
//float [] pY = new float [n];
//float edgeLenght = 50; 


}

void mousePressed(){
 
  //old code below.
  /*for(int x = 0 ; x < mouseX; x = x + boxSizeX){ //double for loop for the rects
    for(int y = 0 ; y < mouseY; y = y + boxSizeY){
        if(mouseX > x && mouseX < x+boxSizeX && mouseY > y && mouseY < y+boxSizeY && mousePressed){
          fill (white,black,black); // drawing the git again but now 
          rect(x,y,boxSizeX,boxSizeY);
  } 
  }
  }
  */
if (wasMouseEverPressed){
  fill (random(0,255));
  rect(x,y,boxSizeX,boxSizeY);
}
  x = (mouseX/boxSizeX)*boxSizeX;
  y = (mouseY/boxSizeY)*boxSizeY;
  fill (random(0,255), random(0,255), random(0,255)); // drawing the git again but now 
  rect(x,y,boxSizeX,boxSizeY);
  wasMouseEverPressed = true;       
}


/*
 2PI/N [radians]





*/
