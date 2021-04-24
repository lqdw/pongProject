void gameover(){
  music.pause();//pause theme music
  gameover.play();
  
  background(51,83,62);
  
  counter=counter+1;
  
  if(leftscore>rightscore){
    textFont(poxel); 
    textSize(45);
    if(counter<5){
      fill(255,150);
      text("LEFT PLAYER WINS!",width/2,height/2); 
    }
    if(counter>5){
      fill(255);
      text("LEFT PLAYER WINS!",width/2,height/2);      
    }
    if(counter==50){
      counter=0;
    }
    
  }else{
    textFont(poxel); 
    textSize(45);
    fill(255,150);
    if(counter<5){
      fill(255,150);    
      text("RIGHT PLAYER WINS!",width/2,height/2);   
    }
    if(counter>5){
      fill(255);    
      text("RIGHT PLAYER WINS!",width/2,height/2);   
    }  
    if(counter==50){
      counter=0;
    }    
  }
  textSize(20);
  text("- click anywhere to restart -",400,350);
  
  strokeWeight(5);
  stroke(255,80);
  tactileExit(350,400,100,50);
  rect(350,400,100,50);//exit button
  fill(0);
  textSize(30);
  fill(51,83,62);
  text("EXIT",402,420);     
}


void tactileExit(int x, int y, int w, int l){//if mouse is on exit
  if(mouseX>350 && mouseY>400 && mouseX<450 && mouseY<450){
    strokeWeight(8); 
    stroke(0,100);
  }else{//if mouse is not on exit
    fill(255,80);
  }
} 

void gameoverClicks(){
  reset();//reset game
  music.rewind();
  mode=INTRO;
  if(mouseX>350 && mouseY>400 && mouseX<450 && mouseY<450){
    exit();//exit game
  }  
}
