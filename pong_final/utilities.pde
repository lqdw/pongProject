void reset(){
  //target
  ballx=width/2;
  bally=height/2;
  vx=random(-5,5);
  vy=random(-5,5);
  
  //game initialization
  leftscore=0;
  rightscore=0;
  timer=100;
}
