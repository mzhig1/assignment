int xPos;                      //Position of the ball
int speed=1;                   //speed of ball
int xDir=1;                    //what direction is the ball going?
int score=0;                   //starting score
int lives=5;                   //Number of lives you start with
boolean lost=false;            //Have you lost yet?
int state = 0;
int uservalue=0;
int sum; 
int num2 = (int) random (4);//random number 0-100
int num1 = (int) random (5);//random number 0-100
void setup() {
 
  size (600, 600);
  background(255);
  textSize(15);
  smooth();
  xPos=width/2;                //Centers our ball
  fill(135);
  text("please press M for math game and O for other game", 100, 500);
  fill(226, 66, 244);
  rect(200, 300, 170, 55);
  rect(200, 400, 170, 55);
  fill(255, 255, 255);
  text("Math game press M", 200, 320);
  text("Other game Press O", 200, 420);
}
void draw () {
  
  if (state==4){
  fill(135);
  text("please press M for math game and O for other game", 100, 500);
  fill(226, 66, 244);
  rect(200, 300, 170, 55);
  rect(200, 400, 170, 55);
  fill(255, 255, 255);
  text("Math game press M", 200, 320);
  text("Other game Press O", 200, 420);}
  

  
  
  
  
  
  
  if (state == 0) {
    background (255);
    fill(175);
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
  if (state == 3 )
    background (255);                                //grey background
  ellipse(xPos, height/2, 50, 50);                 // ball its self 
  text("Click on the ball to get points ", 175, 50);
  xPos=xPos+(speed*xDir);                        //update the ball's position 
  if (xPos > width-20 || xPos<20)                //Did the ball hit the side?
  {
    xDir=-xDir;                                  //If it did reverse the direction
  }
  text("score = "+score, 10, 595);                  //Print the score on the screen
  text("lives = "+lives, width-80, 595);            //Print remaining lives
  if (lives<=0)                                  //Check to see if you lost
  {
    textSize(20);
    text("Click anywhere on the screen to start again", 100, 100);
    noLoop();                                    //Stop looping at the end of the draw function
    lost=true;
    textSize(13);
  }
}

void mousePressed()                              //Runs whenever the mouse is pressed
{
  if (dist(mouseX, mouseY, xPos, 300)<=20)      //traget u need yo hit not to loss points 
  {
    score=score+speed;                           //Increase the speed
    speed=speed+1;                               //Increase the Score
  } else                 
  {
    if (speed<1)                                 //If speed is greater than 1 decrease the speed
    {
      speed=speed-3;
    }
    lives=lives-1;                               //Take away one life
  }
  if (lost==true)                                //If we lost the game, reset now and start over 
  {
    speed=2;                                     //Reset all variables to initial conditions
    lives=5;
    score=0;
    xPos=width/2;
    xDir=1;
    lost=false;
    loop();                                     //Begin looping draw function again
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
  if (key =='o') {
    state = 0;
  }
  if (key=='M') {
    state = 3 ;
  }



}
