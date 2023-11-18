void GameOverText()
{
  lose = true;
  
  float ix = width / 2 - 205;
  float iy = height / 2 + 50;
    
  stroke(255);
  strokeWeight(6);
  noFill();
  rect(ix - 95, iy - 100, ix + 400, iy - 320);
  strokeWeight(1);
        
  showAll();
  textSize(100);   
  stroke(0);
  fill(255, 150, 100);
  text("Game Over!", width / 2 - 285, height / 2 + 50);
  noLoop();
}



void WinText()
{
    float ix = width / 2 - 205;
    float iy = height / 2 + 50;
    
    stroke(255);
    strokeWeight(6);
    noFill();
    rect(ix - 34, iy - 100, ix + 285, iy - 320);
    strokeWeight(1);

    showAll();
    textSize(100);
    stroke(255);
    fill(100, 255, 200);
    text("You Win!", ix, iy);
    noLoop(); 
}



void showAll()
{
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
      parts[i][j].hidden = false;
}
