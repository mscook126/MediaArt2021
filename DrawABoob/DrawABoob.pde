PFont myFont1;


void setup () {
  size(800, 800);
  background (245, 200, 242); ///0-255, (r, g, b) 4th value is transparency
  myFont1 = createFont("AcademyEngravedLetPlain", 1);
  textFont(myFont1);
  textSize(75);
  fill (255);
  textAlign (CENTER);
  text("WELCOME TO", 400, 120);
  fill(1);
  textSize (100);
  text("DRAW A BOOB!", 400, 240);
  fill(1);
  textSize (60);
  text("1) keys 1-0 change skin tone", 400, 360);
  fill (1);
  textSize (50);
  text ("2) press and drag mouse to draw", 400, 480);
  fill (1);
  textSize (60);
  text ("3) don't forget to support your", 400, 600);
  fill (1);
  textSize (50);
  text ("local breast cancer awareness charity!", 400, 650);
  fill (1);
  textSize (30);
  text ("press any number to start", 400, 750);
}

void draw () {
  ///invisible circle for art purposes
  fill (1);
  ellipse (0, 0, 0, 0);
}

void mouseDragged () {

  fill (1);
  ellipse (mouseX, mouseY, 10, 10);
}

void keyPressed() {
  if (keyCode == '1') {
    background (85, 50, 25);
    noStroke ();
    fill (80, 30, 20); ///go to tools if you need color help
    ellipse (200, 400, 100, 100); //x,y,length, height

    noStroke ();
    fill (40, 0, 20); //nipple
    ellipse (200, 400, 50, 50);


    noStroke ();
    fill (80, 30, 20); ///go to tools if you need color help go to tool
    ellipse (600, 400, 100, 100); //x,y,length, height

    noStroke ();
    fill (40, 0, 20); //nipple
    ellipse (600, 400, 50, 50);
  }


  if (key == '2') {
    background (44, 28, 2);

    noStroke (); //darker boob left
    fill (44, 19, 2);
    ellipse (200, 400, 100, 100);

    noStroke (); ///darker nipple left
    fill (21, 12, 1);
    ellipse (200, 400, 50, 50);

    noStroke (); //darker boob right
    fill (44, 19, 2);
    ellipse (600, 400, 100, 100);

    noStroke (); ///darker nipple right
    fill (21, 12, 1);
    ellipse (600, 400, 50, 50);
  }


  if (key == '3') {
    background (245, 218, 190);

    noStroke (); //lighter boob left
    fill (219, 182, 159);
    ellipse (200, 400, 100, 100);

    noStroke (); ///lighter nipple left
    fill (245, 133, 161);
    ellipse (200, 400, 50, 50);

    noStroke (); //lighter boob right
    fill (219, 182, 159);
    ellipse (600, 400, 100, 100);

    noStroke (); ///lighter nipple right
    fill (245, 133, 161);
    ellipse (600, 400, 50, 50);
  }

  if (key == '4') {
    background (214, 187, 136);

    noStroke (); // boob left
    fill (198, 162, 94);
    ellipse (200, 400, 100, 100);

    noStroke (); ///nipple left
    fill (111, 75, 8);
    ellipse (200, 400, 50, 50);

    noStroke (); // boob right
    fill (198, 162, 94);
    ellipse (600, 400, 100, 100);

    noStroke (); /// nipple right
    fill (111, 75, 8);
    ellipse (600, 400, 50, 50);
  }
  if (key == '5') {
    background (137, 99, 74);

    noStroke (); // boob left
    fill (118, 81, 56);
    ellipse (200, 400, 100, 100);

    noStroke (); /// nipple left
    fill (90, 57, 35);
    ellipse (200, 400, 50, 50);

    noStroke (); // boob right
    fill (118, 81, 56);
    ellipse (600, 400, 100, 100);

    noStroke (); /// nipple right
    fill (90, 57, 35);
    ellipse (600, 400, 50, 50);
  }
  if (key == '6') {
    background (137, 99, 74);

    noStroke (); // boob left
    fill (118, 81, 56);
    ellipse (200, 400, 100, 100);

    noStroke (); /// nipple left
    fill (90, 57, 35);
    ellipse (200, 400, 50, 50);

    noStroke (); // boob right
    fill (118, 81, 56);
    ellipse (600, 400, 100, 100);

    noStroke (); /// nipple right
    fill (90, 57, 35);
    ellipse (600, 400, 50, 50);
  }
}
