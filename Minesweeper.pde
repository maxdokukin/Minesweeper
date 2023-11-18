int pxl = 10;
float step = 0;
int BOMB_NUMB = 0;
boolean lose = false;
boolean AIsolve = false;

Part parts[][] = new Part[pxl][pxl];

void setup()
{
  size(800, 800);
  
  step = width / (float) pxl;
    
  generateField();
}



void draw()
{
  background(190);
  
  
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
      parts[i][j].show();
      
  update();
  
  if(AIsolve && !lose)
    solveStep();
}



void update()
{
  int count = 0;
  
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
    {
      if(!parts[i][j].hidden)
        count++;
        
      if(parts[i][j].bomb && !parts[i][j].hidden && !parts[i][j].flag)
        GameOverText();

        
      if(parts[i][j].nBombs == 0 && !parts[i][j].hidden)
        showNeiBombs(i, j);
    }
      
          
  if(pxl * pxl - BOMB_NUMB == count && !lose)
    WinText();
}



void mousePressed()
{
  int i = int(mouseX / step);
  int j = int(mouseY / step);
  
  if(mouseButton ==  LEFT) 
    parts[i][j].hidden = false;
    
  else if(mouseButton == RIGHT)
    if(parts[i][j].flag)
      parts[i][j].flag = false;
    else
      parts[i][j].flag = true;
}



void keyPressed()
{
  if(key == 's')
    showAll();
  
  if(key == 'r')
  {
    loop();
    generateField();
    lose = false;
    AIsolve = false;
  }
  if(key == 'a')
    if(AIsolve)
      AIsolve = false;
    else
      AIsolve = true;
}
