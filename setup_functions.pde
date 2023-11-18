void generateField()
{
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
      parts[i][j] = new Part(i * step, j * step);
      
  for(int i = 0; i < pxl * pxl / 10; i++)
    parts[int(random(pxl))][int(random(pxl))].bomb = true;
    
  BOMB_NUMB = setBombsCount();
}




int setBombsCount()
{
  int count = 0;
  
  for(int i = 0; i < pxl; i++)
    for(int j = 0; j < pxl; j++)
    {
      parts[i][j].nBombs = cBombs(i, j);
      
      if(parts[i][j].bomb)
        count ++;
    }
  
  return count;
}
