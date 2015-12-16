int pressed = 0;
int pressedState = 0;

void setup(){
  size (1280,800);
  textSize(50);
  text("Louis' Lemons Are the Best!", 50,100);
  fill(0,102, 153);
 
  
}

void draw (){
  if (pressedState ==1){
    background(71,216,67);
  } else {
    background(30,30,210);
  }
  fill(71,216,67);
  text("Louis' Lemons Are the Best!", mouseX, mouseY);
  fill(30,30,210);
  text("Because Louis Said So!",mouseX+50, mouseY+50);
  
    
  fill(255);
  ellipseMode(CENTER);
  ellipse(640,400,500,500);

//lemon
  fill(242,253,54);
  strokeWeight(3);
  stroke(242,253,54);
  ellipseMode(CENTER);
  ellipse(640,400,300,200);
  
  //nub of lemon
  arc(500,400,65,75,HALF_PI,PI+HALF_PI);
 
  arc(780,400, 65,75,PI+HALF_PI, TWO_PI+HALF_PI);
 
  //ends of lemon
  strokeWeight(15);
  stroke(0);
  point(480,400);
  
  point(800,400);
}

void mousePressed() {
  pressed = pressed +1;
  pressedState = (pressed%2);
}
