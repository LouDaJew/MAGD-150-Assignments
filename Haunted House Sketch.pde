int ghostOneX = 200;
int ghostOneY = 400;
int ghostTwoX = 600;
int ghostTwoY = 200;

int candyX = 100;
int candyY = 200;

int movementSize = 3;
float gravity = 0.7;

boolean mState = false;

void setup(){
 size(800,600);
 background(0);
 
  stroke(0,123,12);
  fill(0,123,12);
  rect(0,350,800,250);
}

void draw(){
  if (mState == false){
  background (0);
  drawRandomTriangle();
  } else {
    
  }

  println(ghostOneX);
  //ghost one
  fill(255);
  stroke(255);
  
  
  arc(ghostOneX,ghostOneY-50,75,75,PI,TWO_PI);
  //ghost body
  rectMode(CENTER);
  rect(ghostOneX,ghostOneY, 75,100);
  /*
  beginShape();
    vertex(62,75);
    vertex(62,175);
    vertex(137,175);
    vertex(137,75);
  endShape();
  */
  arc(ghostOneX-29,ghostOneY+50,17,50,0,PI);
  arc(ghostOneX-10,ghostOneY+50,18,50,0,PI);
  arc(ghostOneX+10,ghostOneY+50,18,50,0,PI);
  arc(ghostOneX+29,ghostOneY+50,17,50,0,PI);
  
  //ghost arms
  arc(ghostOneX-37.5,ghostOneY-10,50,30,HALF_PI, PI+HALF_PI);
  arc(ghostOneX+37,ghostOneY-10,50,30, PI+HALF_PI, TWO_PI+HALF_PI);
  
  //ghost eyes and mouth
  fill(0);
  ellipseMode(CENTER);
  ellipse(ghostOneX-10,ghostOneY-40,20,20);
  ellipse(ghostOneX+10,ghostOneY-40,20,20);
  ellipse(ghostOneX,ghostOneY-10,20,40);
  
  //ghost number two
  fill(255);
  stroke(255);
  arc(ghostTwoX, ghostTwoY-50,75,75,PI,TWO_PI);
  //ghost body
  /*
  beginShape();
    vertex(662,75);
    vertex(662,175);
    vertex(737,175);
    vertex(737,75);
  endShape();*/
  rect(ghostTwoX, ghostTwoY,75, 100);
  arc(ghostTwoX-29, ghostTwoY+50,17,50,0,PI);
  arc(ghostTwoX-10,ghostTwoY+50,18,50,0,PI);
  arc(ghostTwoX+10,ghostTwoY+50,18,50,0,PI);
  arc(ghostTwoX+29,ghostTwoY+50,17,50,0,PI);
  
  //ghost arms
  arc(ghostTwoX-37,ghostTwoY-10,50,30, HALF_PI,PI+HALF_PI);
  arc(ghostTwoX+37,ghostTwoY-10,50,30,PI+HALF_PI, TWO_PI+HALF_PI);
  
 //ghost eyes and mouth
 fill(0);
 ellipseMode(CENTER);
 ellipse(ghostTwoX-10,ghostTwoY-40,20,20);
 ellipse(ghostTwoX+10,ghostTwoY-40,20,20);
 ellipse(ghostTwoX,ghostTwoY-10,20,40);
  
  
 updateGhost();
 
}

void updateGhost(){
  if(ghostOneX+25 >= width){
    movementSize = movementSize*-1;
  } else if (ghostOneX-25 <= 0){
    movementSize = movementSize * -1;
  }
  ghostOneX = ghostOneX + movementSize;
  fill(255);
  rect(ghostOneX, ghostOneY, 50, 100);
  fill(0);
  ellipseMode(CENTER);
  ellipse(ghostOneX-10,ghostOneY-40,20,20);
  ellipse(ghostOneX+10,ghostOneY-40,20,20);
  ellipse(ghostOneX,ghostOneY-10,20,40);
  
  if(ghostTwoX+25 >= width){
    movementSize = movementSize *-1;
  }else if (ghostTwoX-25 <= 0){
    movementSize = movementSize * -1;
  }
  ghostTwoX = ghostTwoX + movementSize;
  fill(0);

}

void mousePressed(){
  mState = !mState;
  println("changed!");
}

void drawRandomTriangle(){
  float a = random (0, width);
  float b = random (0, width);
  float c = random (0, width);
  float d = random (0, width);
  float e = random (0, width);
  float f = random (0, width);
  triangle(a, b, c, d, e, f);
}
