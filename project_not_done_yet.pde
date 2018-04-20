final int intro = 1;  // final is locking the variable at its value 
final int win = 2;
final int loss= 3;
final int playingothergame = 4;
ball theball;
paddle thepaddle;

int mode;

void setup() {
  size (600,600);
mode = intro;

theball = new ball();
thepaddle = new paddle();


}

void draw() {
 if (mode == intro){ 
  intro ();
}else if (mode == playingothergame) {
playingothergame() ;
}else if (mode == win) {
win () ;
}else if (mode ==loss){
loss() ;
}else{
  println("mike fix it ");
}
}
