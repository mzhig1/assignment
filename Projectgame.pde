/**
 *math and other game  
 * 
 *By Mike Zhigun 
 */




int xPos;                      //Position of the ball
int speed=1;                   //speed of ball
int xDir=1;                    //what direction is the ball going?
int score=0;                   //starting score
int lives=5;                   //Number of lives you start with
boolean lost=false;            //Have you lost yet?
int state = 0;
int uservalue=0;
int sum; 
int num2 = (int) random (4);//random number 0-4
int num1 = (int) random (5);//random number 0-9
void setup() {
 
  size (600, 600);//size
  background(255);//background
  textSize(15);//textsize
  smooth();
  xPos=width/2;                //Centers our ball
  fill(135);//colors it in 
  text("please press M for math game and O for other game", 100, 500);// tells the user to press M for math game and O for   other game 
  fill(226, 66, 244);//color is in 
  rect(200, 300, 170, 55);//rectangle 
  rect(200, 400, 170, 55);//rectangle 
  fill(255, 255, 255);//colors in the text 
  text("Math game press M", 200, 320);//puts the text press M for math game
  text("Other game Press O", 200, 420);//puts press o for other game 
}
void draw () {
  
  if (state==4){// if the stage ot background is = to 4 
  fill(135);//colors text in 
  text("please press M for math game and O for other game", 100, 500);//outputs text 
  fill(226, 66, 244);//colors the text in
  rect(200, 300, 170, 55);//makes a rectangle 
  rect(200, 400, 170, 55);//make a rectangle
  fill(255, 255, 255);//  colors the rectangle
  text("Math game press M", 200, 320);// outputs text to prees M for math game 
  text("Other game Press O", 200, 420);}//outputs text to presS O for math
   
  if (state == 0) { //if the state is 0 then go to the 0 screen
    background (255);//background color 
    fill(175);//colors in the text
    text ("+", 255, 400);//text of +
    text (num1, 225, 400);//outsputs a varible to the screen
    text (num2, 275, 400);//outsputs a varible to the screen
    text ("=", + 320, 400);//prints =
  }
  if (state==1) {//if the state is 1 then go to the 0 screen
    background (255);//background color 
    fill(175);//color of the text
    text("correct", 300, 300);//prints correct 
  } 
  if (state==2) {//if the state is 2 then go to the 0 screen
    background (255);//background color 
    fill(175);//color of the 
    text ("not correct", 300, 300);//prints correct
  }
  if (state == 3 )
    background (255);                                //grey background
  ellipse(xPos, height/2, 50, 50);                 // ball its self 
  text("Click on the ball to get points ", 175, 50);//text click on the ball to get points 
  xPos=xPos+(speed*xDir);                        //update the ball's position 
  if (xPos > width-20 || xPos<20)                //Did the ball hit the side?
  {
    xDir=-xDir;                                  //If it did reverse the direction
  }
  text("score = "+score, 10, 595);                  //Print the score on the screen
  text("lives = "+lives, width-80, 595);            //Print remaining lives
  if (lives<=0)                                  //Check to see if you lost
  {
    textSize(20);// text size
    text("Click anywhere on the screen to start again", 100, 100);//text of "Click anywhere on the screen to start again"
    noLoop();                                    //Stop looping at the end of the draw function
    lost=true; // if lost = true 
    textSize(13);//text size
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



void keyPressed() {            // used keypressed
  if (key == '0') {            // if key of 0 is press it would go to the user value 
    uservalue = 0;             // uservalue varible = 0
  }

  if (key == '1') {        // if key of 1 is press it would go to the user value      
    uservalue = 1;         // uservalue varible =1
  }
  if (key == '2') {        // if key of 2 is press it would go to the user value 
    uservalue = 2;           // uservalue varible =2 
  }
  if (key == '3') {        // if key of 3 is press it would go to the user value 
    uservalue = 3;         // uservalue varible =3 
  }
  if (key == '4') {        // if key of 4 is press it would go to the user value 
    uservalue = 4;         // uservalue varible =4
  }
  if (key == '5') {        // if key of 5 is press it would go to the user value 
    uservalue = 5;         // uservalue varible =5 
  }
  if (key == '6') {       // if key of 6 is press it would go to the user value 
    uservalue = 6;        // uservalue varible =6
  }
  if (key == '7') {       // if key of 7 is press it would go to the user value 
    uservalue = 7;         // uservalue varible =7
  }
  if (key == '8') {         // if key of 8 is press it would go to the user value 
    uservalue = 8;          // uservalue varible=8
  }
  if (key == '9') {          // if key of 9 is press it would go to the user value 
    uservalue = 9;           // uservalue varible=9
  }
  if (num1 + num2 == uservalue) { // if num1 + num2 = to uservalue it willl out put correct 
    fill (255);                   // color of text 
    text("correct", 375, 400);    //text of correct
    state=1;    //if state = 1 then put correct                  
    ;
  } else {   // if state not = to 1 then not correct 
    text("not correct", 375, 400); // put not correct 
    state=2;//state =2 
    ;
  }
  if (key =='o') { //if key is preesed go to state =0
    state = 0; // stae = 0
  }
  if (key=='M') { // if key preesed go to state =3
    state = 3 ; // state = 3 
  }



}
