class ball {
  //ball variables
  float x,y,vx,vy,d;
  ball(){
    x= width/2;
    y= height/2;
    vx= 4;
    vy= 5;
    d= 50;
    
  }
  
// what the ball is going to do
void show(){
  ellipse(x,y,d,d);
}
void act() {
  x = x +vx; // posstiton and velocity
  y= y + vy;
} 
  if (x< d/2 || x > width - d/2){
vx = -vx;
  }

if (y < d/2 || x > height - d/2){
  vy = -vy;


if (dist(x,y,thepaddle.x,thepaddle.y) < d/2 + thepaddle.d/2)
vx = (x - thepaddle.x)*0.1;
vy = (y - thepaddle.y)*0.1;
}
}
