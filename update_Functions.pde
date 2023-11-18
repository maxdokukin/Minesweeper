int cBombs(int i , int j)
{
  int count = 0;
  
  if(i > 0 && j > 0)
    if(parts[i - 1][j - 1].bomb)
      count ++;
     
  if(i > 0)
    if(parts[i - 1][j].bomb)
      count ++;
      
  if(i > 0 && j < pxl - 1)
    if(parts[i - 1][j + 1].bomb)
      count ++;
      
  if(j > 0)
    if(parts[i][j - 1].bomb)
      count ++;
      
  if(j < pxl - 1)
    if(parts[i][j + 1].bomb)
      count ++;
      
  if(i < pxl - 1 && j > 0)
    if(parts[i + 1][j - 1].bomb)
      count ++;
      
  if(i < pxl - 1)
    if(parts[i + 1][j].bomb)
      count ++;
      
  if(i < pxl - 1 && j < pxl - 1)
    if(parts[i + 1][j + 1].bomb)
      count ++;
      
 return count; 
}



void showNeiBombs(int i, int j)
{
  if(i > 0 && j > 0)
    parts[i - 1][j - 1].hidden = false;
           
  if(i > 0)
    parts[i - 1][j].hidden = false;
            
  if(i > 0 && j < pxl - 1)
    parts[i - 1][j + 1].hidden = false;
            
  if(j > 0)
    parts[i][j - 1].hidden = false;
            
  if(j < pxl - 1)
    parts[i][j + 1].hidden = false;
            
  if(i < pxl - 1 && j > 0)
    parts[i + 1][j - 1].hidden = false;
            
  if(i < pxl - 1)
    parts[i + 1][j].hidden = false;
            
  if(i < pxl - 1 && j < pxl - 1)
    parts[i + 1][j + 1].hidden = false;
}
