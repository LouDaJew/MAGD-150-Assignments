Note myNote;
Note secondNote;
Note nextNote;
Note anotherNote;
Note someNote;
Note normalNote;

PImage img;
PImage imga;
PImage imgb;
PImage imgc;

//int stickX= 200;
//int stickY= 400;

int pressed = 0;
int pressedState = 0;

void setup(){
  background(255);
  size(800,600);
  
  //band photo
  img = loadImage("metallica-concert.jpg");
  
  //crowd
  imga = loadImage("crowd2.jpg");
  
  //crowd 
  imgb = loadImage("crowd2.jpg");   
  
  //crowd
  imgc = loadImage("crowd2.jpg");
  
  myNote = new Note();
  secondNote = new Note();
  nextNote = new Note();
  anotherNote = new Note();
  someNote = new Note();
  normalNote = new Note();
  
}

void draw(){  
 
 //adjust background lighting
    if (pressedState ==1){
  background(0);
} else {
  background(255);
}
  //band photo
  image(img, 160, 20);
  
  
//stage
stroke(0);
fill(165,42,42);
rect(0,400,800,200);

//crowd
image(imga, 500, 400);
image(imgb, 200,  400);
image(imgc, 0, 400);

//scaffolding
fill(155);
strokeWeight(2);
rect(50,0,50,400);
fill(255);
triangle(55, 5, 55, 45, 95 ,25);
triangle(95, 35, 95, 75, 55, 55);
triangle(55, 65, 55, 105, 95, 85);
triangle(95, 95, 95, 135, 55, 115);
triangle(55, 125, 55, 165, 95, 145);
triangle(95, 155, 95, 195, 55, 175);
triangle(55, 185, 55, 225, 95, 205);
triangle(95, 215, 95, 255, 55, 235);
triangle(55, 245, 55, 285, 95, 265); 
triangle(95, 275, 95, 315, 55, 295);
triangle(55, 305, 55, 345, 95, 325);
triangle(95, 335, 95, 375, 55, 355);

fill(155);
rect(700,0,50,400);
fill(255);
triangle(705, 5, 705, 45, 745, 25);
triangle(745, 35, 745, 75, 705, 55);
triangle(705, 65, 705, 105, 745, 85);
triangle(745, 95, 745, 135, 705, 115);
triangle(705, 125, 705, 165, 745, 145);
triangle(745, 155, 745, 195, 705, 175);
triangle(705, 185, 705, 225, 745, 205);
triangle(745, 215, 745, 255, 705, 235);
triangle(705, 245, 705, 285, 745, 265);
triangle(745, 275, 745, 315, 705, 295);
triangle(705, 305, 705, 345, 745, 325);
triangle(745, 335, 745, 375, 705, 355);

fill(237, 201, 175);
stroke(237,201,175);
ellipse(mouseX, mouseY, 2,100);
ellipse(mouseX + 50, mouseY + 100, 2, 100);

 // background(255);
  myNote.move();
  myNote.display();
  secondNote.move();
  secondNote.display();
  nextNote.move();
  nextNote.display();
  anotherNote.move();
  anotherNote.display();
  someNote.move();
  someNote.display();



}




class Note{
  int centerX, centerY, offset1, offset2;
  
  Note(){
  centerX = round(random(width));
  centerY = round(random(width));
  //offset1 = 15;
  //offset2 = 15;
  }
  
Note(int _centerX, int _centerY, int _offset1, int _offset2){
  centerX = _centerX;
  centerY = _centerY;
 // offset1 = _offset1;
 // offset2 = _offset2;
}

void display(){
  ellipseMode(CENTER);
  stroke(0);
  strokeWeight(9);
  fill(255,215,0);
  ellipse(centerX, centerY, 50,50);
  strokeWeight(9);
  line(centerX + 24, centerY, centerX + 24 , centerY - 75);
  triangle(centerX + 24, centerY - 75, centerX + 24, centerY - 65, centerX + 50, centerY - 65);
}
void move(){
 centerX = round(random(-10,10)) + centerX;
 centerY = round(random(-10,10)) + centerY;
}
Note myNote;

}
