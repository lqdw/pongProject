void readme(){
  music.play();
  background(0);
  textFont(font); 
  textSize(60);
  fill(255);
  text("This is a PONG game",400,150);
  text("The first person that gets 3 points wins!",400,200);
  
  fill(0);//box 
  stroke(255);
  rect(150,280,500,250);
  fill(255);
  text("CONTROLS",400,300);
  text("W-------move left paddle up",400,330);
  text("S-----move left paddle down",400,360);
  text("up arrow----move right paddle up",400,390);
  text("down arrow-move right paddle down",400,420);
  text("click anywhere on game screen-pause",400,450);
  text("click anywhere on gameover screen-restart",400,480);
  text("(click anywhere to go back to intro)",400,240);
  textSize(40);
  text("made by: Linda Wang, 1-4",400,560);
}  

void readmeClicks(){
  mode=INTRO; 
}
