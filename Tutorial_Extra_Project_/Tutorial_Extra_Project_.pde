/// link to tutorial starfield https://youtu.be/17WoOqgXsRM


Star [] stars = new Star[1000];

float speed;

void setup () {
  size (1000, 1000);
  for (int i = 0; i < stars. length; i ++) {
    stars [i] = new Star ();
  }
}


void draw () {
  speed = map(500, 0, width, 0, 50);
  background (0);
  translate (width/2, height/2);
  for (int i = 0; i < stars. length; i ++) {
    stars [i].update();
    stars [i].show();
  }
}


  
