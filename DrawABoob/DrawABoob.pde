color initial = color(85, 50, 25);

void setup () {
  size(800, 800);
  background (85, 50, 25); ///0-255, (r, g, b) 4th value is transparency
}

////void draw is necessary for my black ellipse interaction to work, BUT
////because of void draw, the nipples and the areolas won't change color when key is pressed
/////i can't put what it is void draw in the set up, because then my mouse pressed and key pressed
//////functions do not work.
void draw () {
  //boob one

  noStroke ();
  fill (80, 30, 20); ///go to tools if you need color help go to tool
  ellipse (200, 400, 100, 100); //x,y,length, height

  noStroke ();
  fill (40, 0, 20); //nipple
  ellipse (200, 400, 50, 50);


  //boob two

  noStroke ();
  fill (80, 30, 20); ///go to tools if you need color help go to tool
  ellipse (600, 400, 100, 100); //x,y,length, height

  noStroke ();
  fill (40, 0, 20); //nipple
  ellipse (600, 400, 50, 50);


  //curve
}

void mouseDragged () {

  fill (1);
  ellipse (mouseX, mouseY, 10, 10);
}

void keyPressed() {
  if (keyCode == BACKSPACE) {
    background(initial); /////!!!!I WANT backspace to be able to just erase the black lines
    /////that have been drawn
  }

  if (keyCode == '1') {
    background (85, 50, 25);
    noStroke ();
    fill (80, 30, 20); ///go to tools if you need color help go to tool
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
    fill (147, 97, 46);
    ellipse (200, 400, 100, 100);

    noStroke (); ///darker nipple left
    fill (72, 59, 45);
    ellipse (200, 400, 50, 50);

    noStroke (); //darker boob right
    fill (147, 97, 46);
    ellipse (600, 400, 100, 100);

    noStroke (); ///darker nipple right
    fill (72, 59, 45);
    ellipse (600, 400, 50, 50);
  }



  if (key == '3') {
    background (245, 218, 190);

    noStroke (); //lighter boob left
    fill (219, 182, 159);
    ellipse (200, 400, 100, 100);

    noStroke (); ///lighter nipple left
    fill (247, 167, 96);
    ellipse (200, 400, 50, 50);

    noStroke (); //lighter boob right
    fill (219, 182, 159);
    ellipse (600, 400, 100, 100);

    noStroke (); ///lighter nipple right
    fill (247, 167, 96);
    ellipse (600, 400, 50, 50);
  }
}
