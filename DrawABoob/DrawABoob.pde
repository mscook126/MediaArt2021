color initial = color(85, 50, 25);

void setup () {
  size(800, 800);
   background (85, 50, 25); ///0-255, (r, g, b) 4th value is transparency
}


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

void mouseDragged (){
  
  fill (1);
  ellipse (mouseX, mouseY, 10, 10);
}

void keyPressed() {
  if (keyCode == BACKSPACE) {
    background(initial); /////is there a way to get this to where it just erases the ellipses drawn
  } 
  
  
  
  if (keyCode == UP) {
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
  
  
  
  if (keyCode == RIGHT) {
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
  
  
  
  if (keyCode == UP) {
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

////change darker


    
    
    
    

    
