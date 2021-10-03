/// link to tutorial starfield https://youtu.be/17WoOqgXsRM
/// link to tutorial mouseX https://youtu.be/ibW4oA7-n8I
//// i followed the coding train starfield challenge video because
//// I loved the warp speed scenes in star wars/star trek, etc. 
/////I added the variable mouseY in order to make the field more controllable
/////so that you can zoom in and out as well as control the speed

PImage img;

Star [] stars = new Star[1000];

float speed;

void setup () {
  size (1000, 1000);
  for (int i = 0; i < stars. length; i ++) {
    stars [i] = new Star ();
   
  }
}

void draw () {
  speed = map(mouseX, mouseY, width, 0, 50);
  background (0);
  translate (width/2, height/2);
  for (int i = 0; i < stars. length; i ++) {
    stars [i].update();
    stars [i].show();
    }
  }


  
