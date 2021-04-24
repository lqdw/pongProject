import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pong!

//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
final int README=5;

int counter;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;//paddles
float ballx, bally, balld;//ball
float vx,vy;//ball velocity
//bouncing ball off the paddle
float ld,rd,leftr,R,rightr;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//ai
boolean AI;

//font
PFont font;
PFont poxel;

int leftscore, rightscore, timer;//score

Minim minim;//sounds
AudioPlayer music, hits, bumps, gameover;

void setup(){
  size(800,600);
  mode=INTRO;
  
  //minim
  minim=new Minim(this);
  music=minim.loadFile("music.mp3");
  hits=minim.loadFile("hits.wav");
  bumps=minim.loadFile("bumps.wav");
  gameover=minim.loadFile("gameover.wav");
    
  textAlign(CENTER,CENTER);
  
  //initialize paddles
  leftx=0;
  lefty=height/2;
  leftd=200;
  
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=60;
  vx=random(-5,5);
  vy=random(-5,5);
  
  //initialize score
  leftscore=0;
  rightscore=0;
  
  //initialize timer
  timer=100;
  
  //initialize keyboard vars
  wkey=skey=upkey=downkey=false;
  
  
  //font
  font=createFont("font.ttf",250);
  poxel=createFont("poxel.ttf",250);
  
  counter=0;
  
}

void draw(){
  if (mode==INTRO){
    intro();
  }else if (mode==GAME){
    game();
  }else if (mode==PAUSE){
    pause();
  }else if (mode==GAMEOVER){
    gameover();
  }else if(mode==README){
    readme();
  }else{
    println("MODE error: "+mode);
  }
}
