void game() {
  music.play();

  background(51, 83, 62);

  line(400, 0, 400, 600);//net


  //score board
  textFont(poxel);//font of score  
  textSize(45);
  fill(255, 150);
  text("SCORE: "+ leftscore, width/4, 80);
  fill(0, 150);
  text("SCORE: "+ rightscore, 3*width/4, 80);

  timer=timer-1;

  //draw paddles
  fill(0, 50);
  strokeWeight(0);
  circle(leftx+10, lefty+50, leftd);//shadow of left paddle
  if (lefty<150) {//limits of the paddles
    lefty=150;
  }
  if (lefty>450) {
    lefty=450;
  }
  circle(rightx-10, righty+50, rightd);//shadow of right paddle
  if (righty<150) {//limits of the paddles
    righty=150;
  }
  if (righty>450) {
    righty=450;
  }

  fill(248, 82, 91);
  strokeWeight(10);
  stroke(50, 46, 51);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;
  if (AI==false) {
    if (upkey==true) righty=righty-5;
    if (downkey==true) righty=righty+5;
  } else {
    if (bally<righty) {
      righty=righty-1.5;
    }
    if (bally>righty) {
      righty=righty+1.5;
    }
  }

  //ball
  fill(0, 50);//ball shadow
  strokeWeight(0);
  circle(ballx+10, bally+50, balld);

  fill(235, 167, 14);
  strokeWeight(8);
  stroke(255, 50);  
  circle(ballx, bally, balld);

  //moving ball
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  //scoring  
  if (ballx<0) {//rightscore
    rightscore++;
    bumps.rewind();
    bumps.play();
    ballx=width/2;
    bally=height/2;
    timer=25;
  } else if (ballx>800) {//leftscore
    leftscore++;
    bumps.rewind();
    bumps.play();
    ballx=width/2;
    bally=height/2;
    timer=25;
  }  

  //bouncing ball
  ld=dist(leftx, lefty, ballx, bally);
  rd=dist(rightx, righty, ballx, bally);
  leftr=leftd/2; 
  rightr=rightd/2;  
  R=balld/2;

  if (ld<=leftr+R) {
    vx=(ballx-leftx)/20;
    vy=(bally-lefty)/20;
    hits.rewind();
    hits.play();
  }
  if (rd<=rightr+R) {
    vx=(ballx-rightx)/20;
    vy=(bally-righty)/20;
    hits.rewind();
    hits.play();
  }

  if (bally<balld/2 || bally>height-balld/2) {
    vy=vy*-1;
  }

  if (leftscore>=3 || rightscore>=3) {
    mode=GAMEOVER;
  }
}

void gameClicks() {
  mode=PAUSE;
}
