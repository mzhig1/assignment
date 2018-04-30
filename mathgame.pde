int uservalue=0;
int state = 0;
int sum; 
int num2 = (int) random (4);//random number 0-100
int num1 = (int) random (5);//random number 0-100

void setup() {
  size (600, 600);
  background(255);
  fill(175);
  textSize(26); 
  text("Please input the right answar ", width/4.7, height/2);
  text("input the number and press enter ", width/4.5, height/4);
}

void draw() {

  if (state == 0) {
    text ("+", 255, 400);
    text (num1, 225, 400);
    text (num2, 275, 400);
    text ("=", + 320, 400);
    
  }
  if (state==1) {
    background (255);
    fill(175);
    text("correct", 300, 300);
  } 
  if (state==2) {
    background (255);
    fill(175);
    text ("not correct", 300, 300);
  }
}



void keyPressed() {
  if (key == '0') {
    uservalue = 0;
  }

  if (key == '1') {
    uservalue = 1;
  }

  if (key == '1') {
    uservalue = 1;
  }
  if (key == '2') {
    uservalue = 2;
  }
  if (key == '3') {
    uservalue = 3;
  }
  if (key == '4') {
    uservalue = 4;
  }
  if (key == '5') {
    uservalue = 5;
  }
  if (key == '6') {
    uservalue = 6;
  }
  if (key == '7') {
    uservalue = 7;
  }
  if (key == '8') {
    uservalue = 8;
  }
  if (key == '9') {
    uservalue = 9;
  }
  if (num1 + num2 == uservalue) {
    fill (255);
    text("correct", 375, 400);
    state=1;
    ;
  } else {
    text("not correct", 375, 400);
    state=2;
    ;
  }
}
