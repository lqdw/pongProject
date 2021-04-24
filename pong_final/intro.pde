void intro(){
  music.play();
  
  background(50,83,63);

  fill(255,100);
  textSize(90);
  text("---------------------------------------------------------------------------------",0,300);
  
  fill(254,156,58);
  strokeWeight(8);
  stroke(255,50);
  
  circle(ballx, bally, 40);//ball
  
  ballx=ballx+vx;//moving ball
  bally=bally+vy;
  
  if (bally<20 || bally>height-20){//bouncing ball
    vy=vy*-1;
  }
  if (ballx<20 || ballx>width-20){
    vx=vx*-1;
  }
  
  textFont(font);//font of title
  fill(0,150);
  text("PONG",395,215);//shadow of title
  fill(255);
  text("PONG",400,200);//title

  tactileSingle(190,380,100,50);  
  rect(190,380,100,50);//single player button

  stroke(255,50);
  tactileDouble(510,380,100,50); 
  rect(510,380,100,50);//double players button

  stroke(255,50);  
  tactileReadme(350,380,100,50);
  rect(350,380,100,50);//read me button

  
  fill(0);
  textSize(60);
  text("1 player",238,395);//single player
  textSize(55);
  text("2 players",560,395);//double player
  text("READ ME",400,400);//read me
}

void tactileSingle(int x, int y, int w, int l){//if mouse is on single player mode
  if (mouseX>190 && mouseX<290 && mouseY>380 && mouseY<430){
    strokeWeight(8);    
    stroke(0,150);
  }else{//if mouse is not on single player mode
    fill(255);
  }
}

void tactileReadme(int x, int y, int w, int l){//if mouse is on readme
  if (mouseX>350 && mouseX<450 && mouseY>380 && mouseY<430){
    strokeWeight(8); 
    stroke(0,150);
  }else{//if mouse is not on readme
    fill(255);
  }
}

void tactileDouble(int x, int y, int w, int l){//if mouse is on double player mode
  if (mouseX>510 && mouseX<610 && mouseY>380 && mouseY<430){
    strokeWeight(8); 
    stroke(0,150);
  }else{//if mouse is not on double player mode
    fill(255);
  }
} 
void introClicks(){ 
  if(mouseX>190 && mouseX<290 && mouseY>380 && mouseY<430){
    mode=GAME;
    AI=true;
    reset();
  }  

  if(mouseX>510 && mouseX<610 && mouseY>380 && mouseY<430){
    mode=GAME;
    AI=false;
    reset();
  }

  if(mouseX>350 && mouseX<450 && mouseY>380 && mouseY<430){
    mode=README;
    reset();
  }
}
