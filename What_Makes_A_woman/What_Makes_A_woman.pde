size(400,400);
background (100, 0, 20); ///0-255, (r, g, b) 4th value is transparency



{ //boob one

noStroke ();
fill (80, 0, 20); ///go to tools if you need color help go to tool
ellipse (100, 200, 100, 100); //x,y,length, height

noStroke ();
fill (40, 0, 20); //nipple
ellipse (100, 200, 50, 50);
}

{ //boob two

noStroke ();
fill (80, 0, 20); ///go to tools if you need color help go to tool
ellipse (300, 200, 100, 100); //x,y,length, height

noStroke ();
fill (40, 0, 20); //nipple
ellipse (300, 200, 50, 50); 
}


{ ///cleavage
stroke (60, 0, 20);
strokeWeight (10);
line(200, 0, 200, 100); /// x, y, to x, y
}



///setup is at start of program
////continously and on loop is in draw
