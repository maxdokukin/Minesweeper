void solveStep()
{
  int hiddenC = 0;
  
  int xS, yS;

  
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
      if(parts[i][j].hidden)
        hiddenC++;
  
  if(pxl * pxl == hiddenC)      //first step
    do
    {
        xS = int(random(pxl));
        yS = int(random(pxl));
        parts[xS][yS].hidden = false;
    }
    while(parts[xS][yS].nBombs != 0);
    
    
    
  for(xS = 0; xS < pxl; xS++)//find a cell to solve
    for(yS = 0; yS < pxl; yS++);
      
      
        
  
  
}
