int xPos;                      //Position of the ball
int speed=1;                   //speed of ball
int xDir=1;                    //what direction is the ball going?
int score=0;                   //starting score
int lives=5;                   //Number of lives you start with
boolean lost=false;            //Have you lost yet?

void setup()                   //Runs once when program launches
{
  size (600,600);
  smooth();
  xPos=width/2;                //Centers our ball
  fill(244, 66, 185);               //Makes the ball and text pink
  textSize(18);                //Sets the size of our text
}

void draw()                                      //Loops over and over again
{
  background (200);                                //grey background
  ellipse(xPos, height/2,50,50);                 // ball its self 
  text("Click on the ball to get points ",175,50);
  xPos=xPos+(speed*xDir);                        //update the ball's position 
  if (xPos > width-20 || xPos<20)                //Did the ball hit the side?
  {
    xDir=-xDir;                                  //If it did reverse the direction
  }
  text("score = "+score,10,595);                  //Print the score on the screen
  text("lives = "+lives,width-80,595);            //Print remaining lives
  if (lives<=0)                                  //Check to see if you lost
  {
    textSize(20);
    text("Click anywhere on the screen to start again", 100,100);
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
  }
  else                 
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
